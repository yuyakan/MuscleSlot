//
//  ExerciseSelectScreen.swift
//  MuscleSlot
//
//  「種目を選ぶ」シート。どの種目をスロット対象にするかを部位別に個別ON/OFF。
//  部位ごとに全選択/全解除。各種目の説明はボタンで表示。
//

import SwiftUI

struct ExerciseSelectScreen: View {
    @Environment(AppState.self) private var app
    @Environment(\.dismiss) private var dismiss

    @State private var detailExercise: Exercise?

    // iPad 判定（regular×regular は iPhone では発生しない）。iPhone は常に false。
    @Environment(\.horizontalSizeClass) private var hSizeClass
    @Environment(\.verticalSizeClass) private var vSizeClass
    private var isPad: Bool { hSizeClass == .regular && vSizeClass == .regular }
    /// iPad では文字・チップを一回り大きく（iPhone は等倍）。
    private var uiScale: CGFloat { isPad ? 1.35 : 1.0 }

    /// iPad で size を uiScale 倍したフォント（iPhone は元のサイズ）。
    private func scaled(_ size: CGFloat, weight: SwiftUI.Font.Weight, design: SwiftUI.Font.Design = .rounded) -> SwiftUI.Font {
        .system(size: size * uiScale, weight: weight, design: design)
    }

    private var accent: Color { Brand.fixedAccent }
    // 他画面（リール・カード）のネオンと同じ単色シアンで統一（2色グラデにしない）。
    private var grad: LinearGradient {
        LinearGradient(colors: [Brand.fixedAccent, Brand.fixedAccent],
                       startPoint: .top, endPoint: .bottom)
    }

    /// 器具フィルターで出せる種目だけ（部位別に使う）。
    private func items(_ part: BodyPart) -> [Exercise] {
        ExerciseDatabase.available(with: app.equipment).filter { $0.bodyPart == part }
    }

    var body: some View {
        ZStack {
            Brand.fixedBackground()

            VStack(spacing: 0) {
                Capsule().fill(Brand.textTertiary).frame(width: 40, height: 5)
                    .padding(.top, 10).padding(.bottom, 10)

                HStack(spacing: 10) {
                    filterBar
                    closeButton
                }
                .padding(.horizontal, 18)
                .padding(.bottom, 12)

                ScrollView(showsIndicators: false) {
                    VStack(spacing: 18) {
                        ForEach(BodyPart.allCases) { part in
                            partSection(part)
                        }
                        if availableCount == 0 {
                            Label("有効な種目が0件。器具の絞り込みを見直してね。", systemImage: "exclamationmark.triangle.fill")
                                .font(scaled(11, weight: .semibold)).foregroundStyle(Brand.warning)
                        }
                    }
                    .padding(.horizontal, 18)
                    .padding(.bottom, 18)
                }
            }
        }
        .presentationBackground(.clear)
        .presentationDetents([.large])
        // iPad ではフォームシートが小さく見えるので、大きめのページサイズにする。
        // iPhone は presentationSizing を無視し、従来どおり .large detent で表示される。
        .presentationSizing(.page)
        .sheet(item: $detailExercise) { ex in
            ExerciseDetailSheet(exercise: ex) { detailExercise = nil }
        }
    }

    // MARK: - 部位セクション（見出し＋種目リスト2カラム）

    private func partSection(_ part: BodyPart) -> some View {
        let list = items(part)
        let on = list.filter { app.isEnabled($0) }.count
        return VStack(alignment: .leading, spacing: 8) {
            // 見出し: 部位名 + 個数 + 全ON/全OFF
            HStack(spacing: 10) {
                Image(systemName: part.symbol).font(scaled(14, weight: .bold))
                    .foregroundStyle(accent)
                Text(part.displayName).font(scaled(17, weight: .bold))
                    .foregroundStyle(Brand.textPrimary)
                Text("\(on)/\(list.count)").font(scaled(11, weight: .semibold))
                    .foregroundStyle(Brand.textTertiary)
                Spacer()
                segButton(part: part)
            }
            // 種目: 2カラムの行リスト
            if list.isEmpty {
                Text("上の絞り込みで器具を増やすと種目が出ます")
                    .font(scaled(11, weight: .semibold)).foregroundStyle(Brand.textTertiary)
                    .padding(.vertical, 6)
            } else {
                LazyVGrid(
                    columns: [GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10)],
                    spacing: 8) {
                    ForEach(list) { exercise in
                        exerciseRow(exercise)
                    }
                }
            }
        }
    }

    /// 部位の全ON/全OFFを1つのセグメントで。
    private func segButton(part: BodyPart) -> some View {
        let list = items(part)
        let allOn = !list.isEmpty && list.allSatisfy { app.isEnabled($0) }
        let allOff = list.allSatisfy { !app.isEnabled($0) }
        return HStack(spacing: 0) {
            Button { app.setExercises(part, enabled: true) } label: {
                Text("全ON").font(scaled(11, weight: .semibold))
                    .foregroundStyle(allOn ? Brand.ink : Brand.textSecondary)
                    .padding(.horizontal, 12).padding(.vertical, 6)
                    .background(allOn ? AnyShapeStyle(grad) : AnyShapeStyle(Color.clear))
            }
            Rectangle().fill(Brand.hairline).frame(width: 1, height: 16)
            Button { app.setExercises(part, enabled: false) } label: {
                Text("OFF").font(scaled(11, weight: .semibold))
                    .foregroundStyle(allOff ? Brand.ink : Brand.textSecondary)
                    .padding(.horizontal, 12).padding(.vertical, 6)
                    .background(allOff ? AnyShapeStyle(grad) : AnyShapeStyle(Color.clear))
            }
        }
        .background(Capsule().fill(Brand.inkRaised)
            .overlay(Capsule().strokeBorder(Brand.hairline, lineWidth: 1)))
        .clipShape(Capsule())
        .buttonStyle(.plain)
        .disabled(list.isEmpty)
        .opacity(list.isEmpty ? 0.4 : 1)
    }

    // MARK: - 上部フィルターバー（器具で絞り込む）

    private var filterBar: some View {
        HStack(spacing: 10) {
            HStack(spacing: 6) {
                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                    .font(scaled(14, weight: .bold)).foregroundStyle(accent)
                Text("絞り込み").font(scaled(13, weight: .semibold)).foregroundStyle(Brand.textSecondary)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(Equipment.allCases) { item in
                        equipmentChip(item)
                    }
                }
            }
            Text("種目数 \(availableCount)")
                .font(scaled(11, weight: .semibold)).foregroundStyle(Brand.textTertiary)
                .fixedSize()
        }
        .padding(.horizontal, 12).padding(.vertical, 10)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: Brand.Radius.card, style: .continuous)
                .fill(Brand.inkDeep)
                .overlay(RoundedRectangle(cornerRadius: Brand.Radius.card, style: .continuous)
                    .strokeBorder(Brand.hairline, lineWidth: 1))
        )
    }

    private var closeButton: some View {
        Button { dismiss() } label: {
            Image(systemName: "xmark")
                .font(scaled(15, weight: .bold))
                .foregroundStyle(Brand.textPrimary)
                .frame(width: 40 * uiScale, height: 40 * uiScale)
                .background(Circle().fill(Brand.inkRaised)
                    .overlay(Circle().strokeBorder(Brand.hairline, lineWidth: 1)))
        }
        .buttonStyle(PressScaleStyle())
    }

    private func equipmentChip(_ item: Equipment) -> some View {
        let isOn = app.equipment.contains(item)
        return Button {
            app.toggleEquipment(item)
            FeedbackEngine.shared.lock(enabled: app.hapticsEnabled)
        } label: {
            HStack(spacing: 5) {
                Image(systemName: item.symbol).font(scaled(11, weight: .bold))
                Text(item.displayName).font(scaled(11, weight: .semibold))
            }
            .foregroundStyle(isOn ? Brand.ink : Brand.textSecondary)
            .padding(.horizontal, 11).padding(.vertical, 7)
            .background {
                if isOn {
                    Capsule().fill(grad).brandGlow(accent, radius: 5, strength: 0.45)
                } else {
                    Capsule().fill(Brand.inkRaised)
                        .overlay(Capsule().strokeBorder(Brand.hairline, lineWidth: 1))
                }
            }
        }
        .buttonStyle(PressScaleStyle())
    }

    private var availableCount: Int {
        ExerciseDatabase.available(with: app.equipment).filter { app.isEnabled($0) }.count
    }

    // MARK: - 種目行（1行・名前＋回数＋トグル丸）

    private func exerciseRow(_ exercise: Exercise) -> some View {
        let isOn = app.isEnabled(exercise)
        return HStack(spacing: 10) {
            Text(exercise.displayName)
                .font(scaled(15, weight: .medium))
                .foregroundStyle(isOn ? Brand.textPrimary : Brand.textTertiary)
                .lineLimit(1).minimumScaleFactor(0.8)
            Spacer(minLength: 4)
            if !exercise.detail.isEmpty || !exercise.steps.isEmpty {
                Button { detailExercise = exercise } label: {
                    Image(systemName: "info.circle")
                        .font(scaled(15, weight: .semibold))
                        .foregroundStyle(Brand.textTertiary)
                }
                .buttonStyle(PressScaleStyle())
            }
            toggleDot(isOn)
        }
        .padding(.horizontal, 12).padding(.vertical, 9)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: Brand.Radius.card, style: .continuous)
                .fill(isOn ? accent.opacity(0.14) : Brand.inkDeep)
                .overlay(RoundedRectangle(cornerRadius: Brand.Radius.card, style: .continuous)
                    .strokeBorder(isOn ? accent.opacity(0.55) : Brand.hairline, lineWidth: 1))
        )
        .contentShape(RoundedRectangle(cornerRadius: Brand.Radius.card))
        .onTapGesture { app.toggleExercise(exercise) }
    }

    /// 右端のトグル丸: ON=塗り＋チェック、OFF=空輪郭。
    private func toggleDot(_ isOn: Bool) -> some View {
        ZStack {
            Circle()
                .fill(isOn ? AnyShapeStyle(grad) : AnyShapeStyle(Color.clear))
                .overlay(Circle().strokeBorder(isOn ? Color.clear : Brand.textTertiary, lineWidth: 1.5))
                .frame(width: 22 * uiScale, height: 22 * uiScale)
            Image(systemName: "checkmark")
                .font(scaled(11, weight: .black))
                .foregroundStyle(Brand.ink)
                .opacity(isOn ? 1 : 0)
        }
    }

}
