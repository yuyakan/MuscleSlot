//
//  SettingsSheet.swift
//  MuscleSlot
//
//  設定シート。今は「回数・秒数レンジ」（スロットで出る回数の上下限）を持つ。
//  将来は音・振動などの設定もここに集約できる。
//

import SwiftUI

struct SettingsSheet: View {
    /// メイン画面でいま決まっている種目（フルで引いた結果／回数タブの選択中）。無ければ nil。
    var decidedExercise: Exercise? = nil

    @Environment(AppState.self) private var app
    @Environment(\.dismiss) private var dismiss

    // iPad 判定（regular×regular は iPhone では発生しない）。iPhone は常に false。
    @Environment(\.horizontalSizeClass) private var hSizeClass
    @Environment(\.verticalSizeClass) private var vSizeClass
    private var isPad: Bool { hSizeClass == .regular && vSizeClass == .regular }
    private var uiScale: CGFloat { isPad ? 1.3 : 1.0 }
    private func scaled(_ size: CGFloat, weight: SwiftUI.Font.Weight, design: SwiftUI.Font.Design = .rounded) -> SwiftUI.Font {
        .system(size: size * uiScale, weight: weight, design: design)
    }

    private var accent: Color { Brand.fixedAccent }

    var body: some View {
        @Bindable var app = app
        ZStack {
            Brand.fixedBackground()
            VStack(spacing: 0) {
                SheetHandle(title: String(localized: "設定"), accent: accent) { dismiss() }
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 26) {
                        // 適正範囲を適用するか
                        useRepRangeRow($app.useRepRange)

                        // 回数・秒数レンジ（適正範囲ON のときは無効・淡色）
                        Group {
                            rangeSection(
                                title: String(localized: "回数の範囲"),
                                note: String(localized: "回数で行う種目（例: 腕立て）に適用"),
                                unit: .reps,
                                lower: $app.repsMin,
                                upper: $app.repsMax)

                            rangeSection(
                                title: String(localized: "秒数の範囲"),
                                note: String(localized: "時間で行う種目（例: プランク）に適用"),
                                unit: .seconds,
                                lower: $app.secsMin,
                                upper: $app.secsMax)
                        }
                        .disabled(app.useRepRange)
                        .opacity(app.useRepRange ? 0.4 : 1)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(18)
                }
            }
        }
        .presentationBackground(.clear)
        .presentationDetents([.medium, .large])
        // iPad ではフォームシートが小さく見えるので大きめに。iPhone は detents のまま。
        .presentationSizing(.page)
    }

    /// 「適正範囲を適用」トグル行。
    private func useRepRangeRow(_ isOn: Binding<Bool>) -> some View {
        HStack(alignment: .top, spacing: 12) {
            VStack(alignment: .leading, spacing: 4) {
                Text(String(localized: "適正範囲で出す"))
                    .font(scaled(17, weight: .bold)).foregroundStyle(Brand.textPrimary)
                Text(String(localized: "各種目に最適な回数で抽選します。OFFにすると下の範囲を使います。"))
                    .font(scaled(11, weight: .semibold)).foregroundStyle(Brand.textTertiary)
                    .fixedSize(horizontal: false, vertical: true)
                // いま決まっている種目があれば、その種目名＋適正範囲を表示。
                if let ex = decidedExercise {
                    Label("\(ex.displayName) ・ \(ex.recommendedRange.lowerBound)〜\(ex.recommendedRange.upperBound)\(ex.unit.suffix)",
                          systemImage: "target")
                        .font(scaled(12, weight: .heavy)).foregroundStyle(accent)
                        .padding(.top, 2)
                }
            }
            Spacer(minLength: 8)
            BrandToggle(isOn: isOn,
                        accentGradient: Brand.fixedGradient,
                        glow: accent)
        }
        .padding(16 * uiScale)
        .background(
            RoundedRectangle(cornerRadius: Brand.Radius.card, style: .continuous)
                .fill(Brand.inkDeep)
                .overlay(RoundedRectangle(cornerRadius: Brand.Radius.card, style: .continuous)
                    .strokeBorder(Brand.hairline, lineWidth: 1))
        )
    }

    /// 1単位ぶんのレンジ設定ブロック（見出し＋現在値＋2つまみスライダー）。
    private func rangeSection(title: String, note: String, unit: RepUnit,
                              lower: Binding<Int>, upper: Binding<Int>) -> some View {
        let bounds = unit.chaosRange
        return VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .firstTextBaseline) {
                Text(title)
                    .font(scaled(17, weight: .bold)).foregroundStyle(Brand.textPrimary)
                Spacer()
                Text("\(lower.wrappedValue)〜\(upper.wrappedValue)\(unit.suffix)")
                    .font(scaled(15, weight: .heavy)).foregroundStyle(accent)
            }
            Text(note)
                .font(scaled(11, weight: .semibold)).foregroundStyle(Brand.textTertiary)

            RangeSliderView(lower: lower, upper: upper, bounds: bounds, accent: accent)
                .padding(.top, 4)

            // 端の目盛り。
            HStack {
                Text("\(bounds.lowerBound)").font(scaled(11, weight: .semibold))
                Spacer()
                Text("\(bounds.upperBound)\(unit.suffix)").font(scaled(11, weight: .semibold))
            }
            .foregroundStyle(Brand.textTertiary)
        }
        .padding(16 * uiScale)
        .background(
            RoundedRectangle(cornerRadius: Brand.Radius.card, style: .continuous)
                .fill(Brand.inkDeep)
                .overlay(RoundedRectangle(cornerRadius: Brand.Radius.card, style: .continuous)
                    .strokeBorder(Brand.hairline, lineWidth: 1))
        )
    }
}
