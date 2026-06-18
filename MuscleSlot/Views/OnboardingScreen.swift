//
//  OnboardingScreen.swift
//  MuscleSlot
//
//  入力タイミングはオンボーディングで1回固定。プリセットを選ぶだけ。ブランド版。
//

import SwiftUI

struct OnboardingScreen: View {
    @Environment(AppState.self) private var app

    private let accent = Brand.accent(mode: .practical, chaos: 0)
    private let grad = Brand.accentGradient(mode: .practical, chaos: 0)

    @State private var appear = false

    var body: some View {
        ZStack {
            Brand.fixedBackground()

            HStack(spacing: 28) {
                // 左: ロゴ＋コピー
                VStack(alignment: .leading, spacing: 14) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 24, style: .continuous)
                            .fill(grad)
                            .frame(width: 84, height: 84)
                            .brandGlow(accent, radius: 22, strength: 0.7)
                        Image(systemName: "dice.fill")
                            .font(.system(size: 40, weight: .black))
                            .foregroundStyle(Brand.ink)
                    }
                    .scaleEffect(appear ? 1 : 0.7)

                    VStack(alignment: .leading, spacing: 2) {
                        Text("MUSCLE").font(.system(size: 14, weight: .black, design: .rounded))
                            .tracking(8).foregroundStyle(accent).brandGlow(accent, radius: 8)
                        Text("SLOT").font(.system(size: 32, weight: .black, design: .rounded))
                            .tracking(12).foregroundStyle(Brand.textPrimary)
                    }
                    Text("部位・種目・回数をスロットで決める。\nまずは今の環境を教えて。")
                        .font(Brand.Font.body)
                        .foregroundStyle(Brand.textSecondary)
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer(minLength: 0)
                    Text("あとから家／ジムのワンタップで切り替えられます。")
                        .font(Brand.Font.caption)
                        .foregroundStyle(Brand.textTertiary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                // 右: プリセット選択
                VStack(spacing: 12) {
                    ForEach(EquipmentPreset.allCases) { preset in
                        Button {
                            app.applyPreset(preset)
                            FeedbackEngine.shared.finale(enabled: app.hapticsEnabled)
                            withAnimation(.spring(response: 0.4)) { app.didOnboard = true }
                        } label: {
                            HStack(spacing: 14) {
                                Image(systemName: iconFor(preset))
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundStyle(accent)
                                    .frame(width: 30)
                                VStack(alignment: .leading, spacing: 3) {
                                    Text(preset.displayName).font(Brand.Font.headline)
                                        .foregroundStyle(Brand.textPrimary)
                                    Text(preset.subtitle).font(Brand.Font.caption)
                                        .foregroundStyle(Brand.textSecondary)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 13, weight: .bold))
                                    .foregroundStyle(Brand.textTertiary)
                            }
                            .padding(16)
                            .brandSurface()
                        }
                        .buttonStyle(PressScaleStyle())
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 40)
            .padding(.vertical, 24)
        }
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.6).delay(0.1)) { appear = true }
        }
    }

    private func iconFor(_ preset: EquipmentPreset) -> String {
        switch preset {
        case .homeBodyweight: return "figure.strengthtraining.traditional"
        case .homeGym:        return "dumbbell.fill"
        case .fullGym:        return "building.2.fill"
        }
    }
}
