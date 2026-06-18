//
//  SlotScreen.swift
//  MuscleSlot
//
//  メイン画面（横向き専用）。左パネル＝設定/部位固定、中央＝大型リール筐体、右端＝引くレバー。
//  常に1種目を引く。スロットの面白さを前面に。
//

import SwiftUI

struct SlotScreen: View {
    @Environment(AppState.self) private var app

    /// このタブが受け持つスロットパターン。
    let pattern: SlotPattern

    @State private var machine = SlotMachineModel()
    @State private var showDetail = false
    @State private var showExerciseSelect = false
    /// 種目タブのカルーセル中央に来ている種目名（引く前の説明対象）。
    @State private var centerCardName: String?

    private var accent: Color { Brand.fixedAccent }
    private var grad: LinearGradient { Brand.fixedGradient }

    var body: some View {
        ZStack {
            Brand.fixedBackground()

            GeometryReader { geo in
                let safe = geo.safeAreaInsets
                let leverWidth = max(64, geo.size.width * 0.09)
                VStack(spacing: 10) {
                    topBar
                    HStack(spacing: 12) {
                        // 「種目」はカードが広いので左パネル(info)を出さず、下の行に置く。
                        if pattern == .partExercise {
                            Color.clear.frame(width: leverWidth)
                        } else {
                            leftPanel
                                .frame(width: leverWidth)
                        }
                        reelRow(rowHeight: max(120, geo.size.height * 0.4))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        // 「種目」はレバーではなく下部のDRAWボタンで引く。
                        if pattern == .partExercise {
                            Color.clear.frame(width: leverWidth)
                        } else {
                            leverColumn
                                .frame(width: leverWidth)
                        }
                    }
                    if pattern == .partExercise {
                        cardControlsRow
                    }
                    if machine.noResult {
                        Label("器具か種目選択を見直してね", systemImage: "exclamationmark.triangle.fill")
                            .font(Brand.Font.caption).foregroundStyle(Brand.warning)
                    }
                }
                .padding(.leading, max(16, safe.leading))
                .padding(.trailing, max(16, safe.trailing))
                .padding(.top, 8)
                .padding(.bottom, 10)
            }
        }
        .sheet(isPresented: $showDetail) {
            detailSheet
        }
        .sheet(isPresented: $showExerciseSelect) {
            ExerciseSelectScreen().environment(app)
        }
    }

    // MARK: - トップバー（ワードマーク・種目）

    private var topBar: some View {
        HStack(spacing: 10) {
            HStack(spacing: 5) {
                Text("MUSCLE").font(.system(size: 10, weight: .black, design: .rounded))
                    .tracking(3).foregroundStyle(accent).brandGlow(accent, radius: 5)
                Text("SLOT").font(.system(size: 13, weight: .black, design: .rounded))
                    .tracking(5).foregroundStyle(Brand.textPrimary)
            }
            Spacer()
            // 種目を選ぶ（器具フィルターも統合）。
            capsuleButton(icon: "checklist") { showExerciseSelect = true }
        }
        // 下タブと同じくらいの高さを確保して上下のバランスをそろえる。
        .frame(height: 49)
    }

    // MARK: - 左パネル（上=設定 / 下=説明）。スロットを中央に寄せる役割。

    private var leftPanel: some View {
        VStack(spacing: 10) {
            Spacer(minLength: 0)
            // 説明をオーバーレイで開く。結果が無い／説明が無いときは無効。
            panelButton(icon: "info.circle", enabled: canShowDetail) {
                showDetail = true
            }
            Spacer(minLength: 0)
        }
    }

    /// 左パネルの丸いアイコンボタン。
    private func panelButton(icon: String, enabled: Bool, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Image(systemName: icon).font(.system(size: 22, weight: .bold))
                .foregroundStyle(Brand.textPrimary)
                .frame(width: 48, height: 48)
                .background(
                    Circle()
                        .fill(Brand.inkRaised)
                        .overlay(Circle().strokeBorder(Brand.hairline, lineWidth: 1))
                )
        }
        .buttonStyle(PressScaleStyle())
        .disabled(!enabled)
        .opacity(enabled ? 1 : 0.4)
    }

    private func capsuleButton(icon: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Image(systemName: icon).font(.system(size: 14, weight: .bold))
                .foregroundStyle(Brand.textPrimary)
                .padding(.horizontal, 14).padding(.vertical, 8)
                .background(
                    Capsule().fill(Brand.inkRaised)
                        .overlay(Capsule().strokeBorder(Brand.hairline, lineWidth: 1))
                )
        }
        .buttonStyle(PressScaleStyle())
    }

    // MARK: - 「回数だけ」用 部位→種目 選択

    /// 器具フィルタ＋ON種目から、その部位の種目だけ。部位が未指定なら空。
    private func pickableExercises(_ part: BodyPart?) -> [Exercise] {
        guard let part else { return [] }
        return ExerciseDatabase.available(with: app.equipment)
            .filter { app.isEnabled($0) && $0.bodyPart == part }
    }

    // MARK: - ドラム選択のバインディング

    /// 部位ドラム。選び直したら種目はクリア（別部位の種目が残らない）＋触覚。
    private var bodyPartBinding: Binding<BodyPart?> {
        Binding(
            get: { app.pickedBodyPart ?? BodyPart.allCases.first },
            set: { newValue in
                guard let newValue else { return }
                app.pickBodyPart(newValue)
                FeedbackEngine.shared.lock(enabled: app.hapticsEnabled)
            }
        )
    }

    /// 種目ドラム。現在の部位プールから選ぶ。先頭をデフォルト選択にする。
    private var exerciseBinding: Binding<Exercise?> {
        Binding(
            get: {
                let list = pickableExercises(app.pickedBodyPart)
                return app.pickedExercise ?? list.first
            },
            set: { newValue in
                guard let newValue else { return }
                app.pickExercise(newValue)
                FeedbackEngine.shared.lock(enabled: app.hapticsEnabled)
            }
        )
    }

    // MARK: - 中央リール（大型）

    @ViewBuilder
    private func reelRow(rowHeight: CGFloat) -> some View {
        // 「種目」パターンはリールではなくカードデッキ演出。
        if pattern == .partExercise {
            CardDeckView(
                pool: exerciseSymbols,
                isSpinning: machine.exerciseSpinning || machine.partSpinning,
                resultTitle: machine.result?.exercise.name,
                resultSubtitle: machine.result?.bodyPart.displayName,
                settled: machine.result != nil,
                subtitleFor: { name in
                    ExerciseDatabase.all.first { $0.name == name }?.bodyPart.displayName
                },
                onCenterChange: { centerCardName = $0 })
            .padding(.horizontal, 12)
            .padding(.vertical, 16)
            .frame(maxHeight: .infinity)
        } else {
            HStack(spacing: 14) {
                if pattern.needsManualPick {
                    manualPickReels(rowHeight: rowHeight)
                } else {
                    spinReels(rowHeight: rowHeight)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 16)
            .frame(maxHeight: .infinity)
            .brandSurface(radius: Brand.Radius.panel,
                          glow: machine.result != nil ? accent : nil)
        }
    }

    /// 抽選で回る通常のリール群（パターン①②④）。
    @ViewBuilder
    private func spinReels(rowHeight: CGFloat) -> some View {
        if pattern.showsPartReel {
            ReelView(
                title: "部位",
                symbols: BodyPart.allCases.map(\.displayName),
                display: machine.partLabel,
                isSpinning: machine.partSpinning,
                isLocked: false,
                isSettled: machine.phase == .done || machine.result != nil,
                accent: accent,
                rowHeight: rowHeight,
                placeholderIcon: "figure.mixed.cardio")
        }
        if pattern.showsExerciseReel {
            ReelView(
                title: "種目",
                symbols: exerciseSymbols,
                display: machine.exerciseLabel,
                isSpinning: machine.exerciseSpinning,
                isLocked: false,
                isSettled: machine.result != nil,
                accent: accent,
                rowHeight: rowHeight,
                placeholderIcon: "dumbbell.fill")
        }
        if pattern.showsRepsReel {
            ReelView(
                title: "回数",
                symbols: (1...20).map { "\($0)" },
                display: machine.repsLabel,
                isSpinning: machine.repsSpinning,
                isLocked: false,
                isSettled: machine.result != nil,
                accent: accent,
                rowHeight: rowHeight,
                placeholderIcon: "number")
        }
    }

    /// 「回数だけ」: 部位・種目はスワイプで選ぶドラム、回数だけ抽選で回る。
    @ViewBuilder
    private func manualPickReels(rowHeight: CGFloat) -> some View {
        PickerReelView(
            title: "部位",
            items: BodyPart.allCases,
            label: { $0.displayName },
            selection: bodyPartBinding,
            accent: accent,
            rowHeight: rowHeight,
            emptyHint: "部位なし")
        PickerReelView(
            title: "種目",
            items: pickableExercises(app.pickedBodyPart),
            label: { $0.name },
            selection: exerciseBinding,
            accent: accent,
            rowHeight: rowHeight,
            emptyHint: "右上の種目から\n設定を見直してね")
        ReelView(
            title: "回数",
            symbols: (1...20).map { "\($0)" },
            display: machine.repsLabel,
            isSpinning: machine.repsSpinning,
            isLocked: false,
            isSettled: machine.result != nil,
            accent: accent,
            rowHeight: rowHeight,
            placeholderIcon: "number")
    }

    private var exerciseSymbols: [String] {
        let pool = ExerciseDatabase.available(with: app.equipment).filter { app.isEnabled($0) }
        let names = pool.map(\.name).shuffled().prefix(12)
        return names.isEmpty ? ["？"] : Array(names)
    }

    /// info ボタンで説明する対象の種目。引く前でも出せるようパターン別に決める。
    /// - 結果が出ていればその種目
    /// - 種目タブ: 引く前は出せる種目の代表（先頭）
    /// - 回数タブ: 引く前は選択中の種目
    private var detailExercise: Exercise? {
        if let result = machine.result { return result.exercise }
        switch pattern {
        case .partExercise:
            // カルーセル中央に見えている種目。未取得なら出せる種目の先頭。
            if let name = centerCardName,
               let ex = ExerciseDatabase.all.first(where: { $0.name == name }) {
                return ex
            }
            return ExerciseDatabase.available(with: app.equipment)
                .first { app.isEnabled($0) }
        case .repsOnly:
            return effectivePickedExercise
        case .full:
            return nil
        }
    }

    /// 説明対象があり、かつ説明文があるとき info ボタンを有効化。
    private var canShowDetail: Bool {
        detailExercise?.detail.isEmpty == false
    }

    // MARK: - 説明シート（種目リールのタップで開く）

    @ViewBuilder
    private var detailSheet: some View {
        ZStack {
            Brand.fixedBackground()
            VStack(spacing: 0) {
                SheetHandle(title: detailExercise?.name ?? "説明", accent: accent) {
                    showDetail = false
                }
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 18) {
                        if let ex = detailExercise {
                            // メタ情報のチップ列
                            metaChips(ex)

                            // 概要（detail）
                            if !ex.detail.isEmpty {
                                Text(ex.detail)
                                    .font(Brand.Font.body).foregroundStyle(Brand.textSecondary)
                                    .fixedSize(horizontal: false, vertical: true)
                            }

                            // 動作手順
                            if !ex.steps.isEmpty {
                                stepsSection(ex.steps)
                            } else if ex.detail.isEmpty {
                                Text("説明準備中")
                                    .font(Brand.Font.body).foregroundStyle(Brand.textTertiary)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(18)
                }
            }
        }
        .presentationBackground(.clear)
        .presentationDetents([.medium, .large])
    }

    /// 部位・回数・強度・器具をチップで並べる。
    private func metaChips(_ ex: Exercise) -> some View {
        HStack(spacing: 8) {
            metaChip(ex.bodyPart.displayName, icon: ex.bodyPart.symbol)
            if let result = machine.result {
                metaChip(result.countLabel, icon: "number")
            }
            metaChip(ex.intensity.displayName, icon: "flame.fill")
        }
    }

    private func metaChip(_ text: String, icon: String) -> some View {
        HStack(spacing: 5) {
            Image(systemName: icon).font(.system(size: 11, weight: .bold))
            Text(text).font(Brand.Font.caption)
        }
        .foregroundStyle(accent)
        .padding(.horizontal, 11).padding(.vertical, 7)
        .background(
            Capsule().fill(accent.opacity(0.14))
                .overlay(Capsule().strokeBorder(accent.opacity(0.4), lineWidth: 1))
        )
    }

    /// 番号バッジ付きの動作手順。
    private func stepsSection(_ steps: [String]) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Label("動作", systemImage: "figure.run")
                .font(Brand.Font.headline).foregroundStyle(Brand.textPrimary)
            ForEach(Array(steps.enumerated()), id: \.offset) { i, step in
                HStack(alignment: .top, spacing: 12) {
                    Text("\(i + 1)")
                        .font(.system(size: 14, weight: .black, design: .rounded))
                        .foregroundStyle(Brand.ink)
                        .frame(width: 26, height: 26)
                        .background(Circle().fill(grad).brandGlow(accent, radius: 4, strength: 0.4))
                    Text(step)
                        .font(Brand.Font.body).foregroundStyle(Brand.textSecondary)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 3)
                }
            }
        }
    }

    // MARK: - レバー列（右端）

    private var leverColumn: some View {
        SlotLever(
            isSpinning: machine.isSpinning,
            disabled: leverDisabled,
            accent: accent,
            grad: grad,
            hapticsEnabled: app.hapticsEnabled) {
                Task { await spin() }
            }
    }

    // MARK: - 「種目」タブの下部操作行（左=説明 / 右=スタート）

    private var cardControlsRow: some View {
        HStack {
            panelButton(icon: "info.circle", enabled: canShowDetail) {
                showDetail = true
            }
            Spacer()
            startButton
        }
    }

    /// カードを引くスタートボタン（▶）。レバーの代わり。
    private var startButton: some View {
        Button {
            FeedbackEngine.shared.lock(enabled: app.hapticsEnabled, strong: true)
            Task { await spin() }
        } label: {
            Image(systemName: machine.isSpinning ? "hourglass" : "play.fill")
                .font(.system(size: 20, weight: .black))
                .foregroundStyle(Brand.ink)
                .frame(width: 54, height: 54)
                .background(
                    Circle().fill(grad).brandGlow(accent, radius: 12, strength: 0.7)
                )
        }
        .buttonStyle(PressScaleStyle())
        .disabled(machine.isSpinning)
        .opacity(machine.isSpinning ? 0.6 : 1)
    }

    // MARK: - ロジック接続

    /// ドラムで中央に来ている種目（未操作でも先頭が選択扱い）。
    private var effectivePickedExercise: Exercise? {
        app.pickedExercise ?? pickableExercises(app.pickedBodyPart ?? BodyPart.allCases.first).first
    }

    private var context: SlotEngine.Context {
        SlotEngine.Context(
            mode: app.mode, chaos: app.chaos, equipment: app.equipment,
            enabledExercises: app.enabledExercises,
            fixedExercise: pattern.needsManualPick ? effectivePickedExercise : nil)
    }

    /// 「回数だけ」で出せる種目が無いときだけレバー無効。
    private var leverDisabled: Bool {
        pattern.needsManualPick && effectivePickedExercise == nil
    }

    private func spin() async {
        await machine.spinSingle(context: context, app: app, pattern: pattern)
    }
}
