//
//  Theme.swift
//  MuscleSlot
//
//  ブランドのデザインシステム。色・タイポ・面・グローを一元管理する。
//  芯: ネオン×ディープインクのスロット筐体。
//  実用＝冷たく静か（シアン/ブルー）、カオス＝色温度が上がり派手（マゼンタ→レッド）。
//

import SwiftUI

// MARK: - Brand トークン

enum Brand {

    // MARK: 基調色（インク）

    /// アプリ全体の地。純黒をやめ、明るめのソフトダーク（青紫寄りのダークグレー）。
    static let ink = Color(red: 0.110, green: 0.115, blue: 0.145)      // #1C1D25
    static let inkRaised = Color(red: 0.150, green: 0.156, blue: 0.190) // 一段持ち上げた面 #262830
    static let inkDeep = Color(red: 0.082, green: 0.086, blue: 0.110)   // 最奥 #15161C

    static let textPrimary = Color.white
    static let textSecondary = Color.white.opacity(0.6)
    static let textTertiary = Color.white.opacity(0.38)

    // MARK: アクセント（モード×カオス度で連動）

    /// メインのアクセント。実用＝シアン、おまかせ＝ふり幅で赤紫へ。彩度/明度は控えめ（眩しすぎ防止）。
    static func accent(mode: SlotMode, chaos: Double) -> Color {
        switch mode {
        case .practical:
            return Color(hue: 0.52, saturation: 0.72, brightness: 0.94) // ソフトシアン
        case .chaos:
            // 0→マゼンタ(0.88) 1→レッドオレンジ(0.02付近)
            let hue = (0.88 - chaos * 0.86 + 1.0).truncatingRemainder(dividingBy: 1.0)
            return Color(hue: hue, saturation: 0.78, brightness: 0.95)
        }
    }

    /// アクセントの相方（グラデの片側）。少し色相をずらして奥行きを出す。
    static func accentSecondary(mode: SlotMode, chaos: Double) -> Color {
        switch mode {
        case .practical:
            return Color(hue: 0.62, saturation: 0.76, brightness: 0.94) // ソフトブルー
        case .chaos:
            let hue = (0.96 - chaos * 0.86 + 1.0).truncatingRemainder(dividingBy: 1.0)
            return Color(hue: hue, saturation: 0.80, brightness: 0.95)
        }
    }

    /// 2色のネオングラデ（ボタン・選択状態など）。
    static func accentGradient(mode: SlotMode, chaos: Double) -> LinearGradient {
        LinearGradient(
            colors: [accentSecondary(mode: mode, chaos: chaos),
                     accent(mode: mode, chaos: chaos)],
            startPoint: .topLeading, endPoint: .bottomTrailing)
    }

    // MARK: ブランド固定アクセント（モード廃止後、アプリ全体で1色に統一）

    /// 画面全体で一貫して使う固定アクセント（ソフトシアン）。ふり幅では色を変えない。
    static let fixedAccent = accent(mode: .practical, chaos: 0)
    static let fixedGradient = accentGradient(mode: .practical, chaos: 0)
    static func fixedBackground() -> some View { background(mode: .practical, chaos: 0) }

    /// 成功（やる）の色。ブランド内でも浮かないライム系。明度は控えめ。
    static let success = Color(hue: 0.38, saturation: 0.72, brightness: 0.88)
    static let warning = Color(hue: 0.12, saturation: 0.90, brightness: 0.95)

    // MARK: 背景

    /// 画面の地。インク＋上部にアクセントのグローを乗せた放射グラデ。
    static func background(mode: SlotMode, chaos: Double) -> some View {
        ZStack {
            ink
            // 上部から差すアクセントのグロー。おまかせで強くなるが控えめに。
            RadialGradient(
                colors: [accent(mode: mode, chaos: chaos)
                            .opacity(mode == .chaos ? 0.16 + chaos * 0.10 : 0.10),
                         .clear],
                center: .init(x: 0.5, y: -0.05),
                startRadius: 0,
                endRadius: 440)
            // 下部の対比グロー。
            RadialGradient(
                colors: [accentSecondary(mode: mode, chaos: chaos)
                            .opacity(mode == .chaos ? 0.12 : 0.06),
                         .clear],
                center: .init(x: 0.5, y: 1.08),
                startRadius: 0,
                endRadius: 420)
            LinearGradient(
                colors: [.clear, inkDeep.opacity(0.45)],
                startPoint: .top, endPoint: .bottom)
        }
        .ignoresSafeArea()
    }

    // MARK: 面（サーフェス）の縁

    /// カード等の極細ハイライト縁。
    static let hairline = Color.white.opacity(0.08)

    // MARK: 角丸スケール

    enum Radius {
        static let chip: CGFloat = 13
        static let card: CGFloat = 20
        static let panel: CGFloat = 26
        static let reel: CGFloat = 18
    }

    // MARK: タイポ（rounded 基調）

    enum Font {
        static let display = SwiftUI.Font.system(size: 30, weight: .black, design: .rounded)
        static let title = SwiftUI.Font.system(size: 22, weight: .heavy, design: .rounded)
        static let headline = SwiftUI.Font.system(size: 17, weight: .bold, design: .rounded)
        static let body = SwiftUI.Font.system(size: 15, weight: .medium, design: .rounded)
        static let label = SwiftUI.Font.system(size: 13, weight: .semibold, design: .rounded)
        static let caption = SwiftUI.Font.system(size: 11, weight: .semibold, design: .rounded)
        static let reel = SwiftUI.Font.system(size: 19, weight: .heavy, design: .rounded)
        static let number = SwiftUI.Font.system(size: 26, weight: .black, design: .rounded)
    }
}

// MARK: - サーフェス修飾子（ブランドのカード面）

private struct BrandSurface: ViewModifier {
    var radius: CGFloat
    var glowColor: Color?
    var elevated: Bool

    func body(content: Content) -> some View {
        content
            .background(
                ZStack {
                    // ベースの面。上が少し明るいサテン質。
                    LinearGradient(
                        colors: [Brand.inkRaised, Brand.inkDeep],
                        startPoint: .top, endPoint: .bottom)
                    if elevated {
                        LinearGradient(
                            colors: [.white.opacity(0.06), .clear],
                            startPoint: .top, endPoint: .center)
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: radius, style: .continuous))
            )
            .overlay(
                RoundedRectangle(cornerRadius: radius, style: .continuous)
                    .strokeBorder(
                        LinearGradient(
                            colors: [.white.opacity(0.18), .white.opacity(0.03)],
                            startPoint: .top, endPoint: .bottom),
                        lineWidth: 1)
            )
            .shadow(color: .black.opacity(0.28), radius: 10, y: 6)
            .shadow(color: (glowColor ?? .clear).opacity(glowColor == nil ? 0 : 0.22),
                    radius: 12, y: 0)
    }
}

extension View {
    /// ブランドのカード面を敷く。glowColor を渡すと外周がネオンに発光する。
    func brandSurface(radius: CGFloat = Brand.Radius.card,
                      glow: Color? = nil,
                      elevated: Bool = true) -> some View {
        modifier(BrandSurface(radius: radius, glowColor: glow, elevated: elevated))
    }

    /// テキスト等にネオンの発光を与える。
    func brandGlow(_ color: Color, radius: CGFloat = 8, strength: Double = 0.6) -> some View {
        self
            .shadow(color: color.opacity(strength), radius: radius)
            .shadow(color: color.opacity(strength * 0.35), radius: radius * 1.6)
    }
}

// MARK: - 互換シム（既存呼び出しを壊さないため）

enum Theme {
    static func backgroundGradient(mode: SlotMode, chaos: Double) -> some View {
        Brand.background(mode: mode, chaos: chaos)
    }
    static func accent(mode: SlotMode, chaos: Double) -> Color {
        Brand.accent(mode: mode, chaos: chaos)
    }
    static let reelText = Brand.textPrimary
    static let reelBackground = Brand.inkDeep
}
