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
    @Environment(InterstitialAdManager.self) private var ads
    @Environment(ReviewRequestManager.self) private var review

    /// このタブが受け持つスロットパターン。
    let pattern: SlotPattern

    @State private var machine = SlotMachineModel()
    @State private var showDetail = false
    @State private var showExerciseSelect = false
    @State private var showSettings = false
    /// 種目タブのカルーセル中央に来ている種目名（引く前の説明対象）。
    @State private var centerCardName: String?

    private var accent: Color { Brand.fixedAccent }
    private var grad: LinearGradient { Brand.fixedGradient }

    // iPad 判定（regular×regular は iPhone では発生しない）。iPhone は常に false。
    @Environment(\.horizontalSizeClass) private var hSizeClass
    @Environment(\.verticalSizeClass) private var vSizeClass
    private var isPad: Bool { hSizeClass == .regular && vSizeClass == .regular }

    /// iPhone 横向きの基準サイズ（このサイズで描画してから iPad では等比拡大する）。
    private let phoneBaseSize = CGSize(width: 844, height: 390)
    private var phoneAspect: CGFloat { phoneBaseSize.width / phoneBaseSize.height }

    var body: some View {
        Group {
            if isPad {
                // iPad: iPhone 基準サイズ(844×390)でレイアウトを組み、比率を保ったまま
                // 画面いっぱいに「拡大（scaleEffect）」する。フォント・余白・グローも等比で大きくなる。
                // レターボックス部分も地色を合わせる。
                ZStack {
                    Brand.fixedBackground().ignoresSafeArea()
                    GeometryReader { screen in
                        let box = inscribedSize(in: screen.size, aspect: phoneAspect)
                        let scale = box.width / phoneBaseSize.width
                        slotLayout
                            .frame(width: phoneBaseSize.width, height: phoneBaseSize.height)
                            .scaleEffect(scale)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    .ignoresSafeArea()

                    // iPad: ワードマークを画面左上に配置。
                    wordmark
                        .scaleEffect(1.4, anchor: .topLeading)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.leading, 28)
                        .padding(.top, 20)

                    // iPad: 右上ボタン群（設定・種目一覧）を画面右上に配置。
                    topRightButtons
                        .scaleEffect(1.4, anchor: .topTrailing)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                        .padding(.trailing, 28)
                        .padding(.top, 20)
                }
            } else {
                // iPhone: 従来どおり全面表示（コードパスは元のまま）。
                slotLayout
            }
        }
        .sheet(isPresented: $showDetail) {
            if let ex = detailExercise {
                ExerciseDetailSheet(exercise: ex,
                                    countLabel: machine.result?.countLabel) {
                    showDetail = false
                }
            }
        }
        .sheet(isPresented: $showExerciseSelect) {
            ExerciseSelectScreen().environment(app)
        }
        .sheet(isPresented: $showSettings) {
            SettingsSheet(decidedExercise: decidedExercise).environment(app)
        }
    }

    /// スロット筐体本体。iPhone ではそのまま全面、iPad では比率固定のボックス内に描画される。
    /// 中身は従来の iPhone レイアウトと同一（geo.size はラッパーが与える描画領域）。
    private var slotLayout: some View {
        ZStack {
            // iPhone は自前の地色を敷く。iPad は外側の全画面地色に任せ（継ぎ目防止）、ここは透明。
            if isPad {
                Color.clear
            } else {
                Brand.fixedBackground()
            }

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
    }

    /// 指定アスペクト比を保ったまま、与えられたサイズに収まる最大の矩形。
    private func inscribedSize(in size: CGSize, aspect: CGFloat) -> CGSize {
        if size.width / size.height > aspect {
            // 縦が制約 → 高さいっぱい、幅は比率から算出。
            return CGSize(width: size.height * aspect, height: size.height)
        } else {
            // 横が制約 → 幅いっぱい、高さは比率から算出。
            return CGSize(width: size.width, height: size.width / aspect)
        }
    }

    // MARK: - トップバー（ワードマーク・種目）

    private var topBar: some View {
        HStack(spacing: 10) {
            // iPad ではワードマーク／右上ボタン群を画面の左上・右上のオーバーレイに出すので、
            // ここでは隠す（場所だけ確保）。iPhone は従来どおり表示。
            wordmark.opacity(isPad ? 0 : 1)
            Spacer()
            // 設定（回数レンジ）＋ 種目を選ぶ（器具フィルターも統合）。
            topRightButtons.opacity(isPad ? 0 : 1)
        }
        // 下タブと同じくらいの高さを確保して上下のバランスをそろえる。
        .frame(height: 49)
    }

    /// 右上のボタン群（設定・種目一覧）。iPad ではオーバーレイで右上に再利用する。
    /// 「種目」タブは回数・秒数が無関係なので設定（歯車）ボタンは出さない。
    private var topRightButtons: some View {
        HStack(spacing: 10) {
            if pattern != .partExercise {
                settingsButton
            }
            exerciseListButton
        }
    }

    /// 設定（回数・秒数レンジ）を開くボタン。
    private var settingsButton: some View {
        capsuleButton(icon: "slider.horizontal.3") { showSettings = true }
    }

    /// 種目一覧（種目設定）を開くボタン。
    private var exerciseListButton: some View {
        capsuleButton(icon: "checklist") { showExerciseSelect = true }
    }

    /// 「SHUFFIT」ワードマーク。
    private var wordmark: some View {
        Text("SHUFFIT")
            .font(.system(size: 13, weight: .black, design: .rounded))
            .tracking(4)
            .foregroundStyle(Brand.textPrimary)
            .brandGlow(accent, radius: 5)
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
                resultTitle: machine.result?.exercise.displayName,
                resultSubtitle: machine.result?.bodyPart.displayName,
                settled: machine.result != nil,
                subtitleFor: { name in
                    ExerciseDatabase.all.first { $0.displayName == name }?.bodyPart.displayName
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
                title: String(localized: "部位"),
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
                title: String(localized: "種目"),
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
                title: String(localized: "回数"),
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
            title: String(localized: "部位"),
            items: BodyPart.allCases,
            label: { $0.displayName },
            selection: bodyPartBinding,
            accent: accent,
            rowHeight: rowHeight,
            emptyHint: String(localized: "部位なし"))
        PickerReelView(
            title: String(localized: "種目"),
            items: pickableExercises(app.pickedBodyPart),
            label: { $0.displayName },
            selection: exerciseBinding,
            accent: accent,
            rowHeight: rowHeight,
            emptyHint: String(localized: "右上の種目から\n設定を見直してね"))
        ReelView(
            title: String(localized: "回数"),
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
        let names = pool.map(\.displayName).shuffled().prefix(12)
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
               let ex = ExerciseDatabase.all.first(where: { $0.displayName == name }) {
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

    /// 設定シートに渡す「いま決まっている種目」。
    /// - 引いた結果があればその種目（フル/回数）
    /// - 回数タブは引く前でも選択中の種目
    /// それ以外（フルで引く前）は nil。
    private var decidedExercise: Exercise? {
        if let result = machine.result { return result.exercise }
        if pattern == .repsOnly { return effectivePickedExercise }
        return nil
    }

    /// 説明対象があり、かつ説明文があるとき info ボタンを有効化。
    private var canShowDetail: Bool {
        detailExercise?.detail.isEmpty == false
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
            fixedExercise: pattern.needsManualPick ? effectivePickedExercise : nil,
            useRepRange: app.useRepRange,
            countRange: { app.countRange(for: $0) })
    }

    /// 「回数だけ」で出せる種目が無いときだけレバー無効。
    private var leverDisabled: Bool {
        pattern.needsManualPick && effectivePickedExercise == nil
    }

    private func spin() async {
        await machine.spinSingle(context: context, app: app, pattern: pattern)
        // 結果が出た引きだけを数えて（空引きは対象外）、広告とレビューを振り分ける。
        // カウンタは AppState に持たせ、全タブで通し番号を共有する。
        guard machine.result != nil else { return }
        app.spinCount += 1
        // 広告は3回に1回（3,6,9…）、レビューはその1回前（2,5,8…）で被らせない。
        switch app.spinCount % 3 {
        case 0: ads.show()
        case 2: review.requestReview()
        default: break
        }
    }
}
