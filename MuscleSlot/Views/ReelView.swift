//
//  ReelView.swift
//  MuscleSlot
//
//  1本のリール筐体。テキストを縦に流し offset を ease-out で減速。物理シミュ不要。
//  ブランド: ディープインクの窓＋上下フェード＋確定時にネオン縁が灯る。
//

import SwiftUI

struct ReelView: View {
    let title: String
    let symbols: [String]
    let display: String
    let isSpinning: Bool
    let isLocked: Bool
    /// 確定済み（結果が出ている）か。点灯演出に使う。
    var isSettled: Bool = false
    let accent: Color
    var onTap: () -> Void = {}
    /// リール窓1行の高さ。横向きの大型筐体では大きく渡す。
    var rowHeight: CGFloat = 96
    /// 未確定（"？"）のときに出すアイコン。各リールの意味づけに使う。
    var placeholderIcon: String? = nil

    @State private var spinOffset: CGFloat = 0
    @State private var idlePulse = false

    /// 中身がまだ無い（プレースホルダ）状態か。
    private var isPlaceholder: Bool { display == "？" && !isSpinning }

    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 4) {
                Text(title.uppercased())
                    .font(Brand.Font.caption)
                    .tracking(1.5)
                    .foregroundStyle(Brand.textSecondary)
                if isLocked {
                    Image(systemName: "lock.fill")
                        .font(.system(size: 9, weight: .bold))
                        .foregroundStyle(accent)
                }
            }

            ZStack {
                // 窓
                RoundedRectangle(cornerRadius: Brand.Radius.reel, style: .continuous)
                    .fill(
                        LinearGradient(colors: [Brand.inkRaised, Brand.inkDeep],
                                       startPoint: .top, endPoint: .bottom)
                    )

                // サイバーグリッド（カードタブと統一）。
                gridOverlay
                    .opacity(isSettled ? 0.45 : 0.2)
                    .clipShape(RoundedRectangle(cornerRadius: Brand.Radius.reel, style: .continuous))

                if isSpinning {
                    spinningStrip
                } else if isPlaceholder {
                    placeholderContent
                } else {
                    Text(display.jaWrapped)
                        .font(.system(size: 22, weight: .black, design: .rounded))
                        .foregroundStyle(Brand.textPrimary)
                        .multilineTextAlignment(.center)
                        .minimumScaleFactor(0.55)
                        .lineLimit(2)
                        .padding(.horizontal, 6)
                        .brandGlow(isSettled ? accent : .clear, radius: 8, strength: 0.7)
                        .transition(.opacity)
                }

                // 上下のフェード（リールの覗き窓）
                VStack {
                    LinearGradient(colors: [Brand.inkDeep, .clear], startPoint: .top, endPoint: .bottom)
                        .frame(height: 18)
                    Spacer()
                    LinearGradient(colors: [.clear, Brand.inkDeep], startPoint: .top, endPoint: .bottom)
                        .frame(height: 18)
                }
                .allowsHitTesting(false)
            }
            .frame(minHeight: rowHeight, maxHeight: .infinity)
            // 窓の形でクリップ → 回転ストリップ・フェードがリール内だけに収まる。
            .clipShape(RoundedRectangle(cornerRadius: Brand.Radius.reel, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: Brand.Radius.reel, style: .continuous)
                    .strokeBorder(
                        isSettled ? accent : accent.opacity(0.45),
                        lineWidth: isSettled ? 2 : 1.2)
            )
            .brandGlow(isSettled ? accent : accent.opacity(0.4),
                       radius: isSettled ? 12 : 6, strength: isSettled ? 0.6 : 0.3)
            .contentShape(RoundedRectangle(cornerRadius: Brand.Radius.reel))
            .onTapGesture(perform: onTap)
        }
        .onChange(of: isSpinning) { _, spinning in
            if spinning { startSpin() }
        }
        .onAppear { idlePulse = true }
    }

    // MARK: - プレースホルダ（未確定時）

    @ViewBuilder
    private var placeholderContent: some View {
        VStack(spacing: 8) {
            Image(systemName: placeholderIcon ?? "questionmark")
                .font(.system(size: 26, weight: .bold))
                .foregroundStyle(accent.opacity(0.85))
                .brandGlow(accent, radius: 8, strength: idlePulse ? 0.5 : 0.2)
        }
        .opacity(idlePulse ? 1 : 0.6)
        .animation(.easeInOut(duration: 1.3).repeatForever(autoreverses: true), value: idlePulse)
    }

    /// 窓内の細いグリッド。
    private var gridOverlay: some View {
        GeometryReader { g in
            Path { p in
                let step: CGFloat = 22
                var x: CGFloat = 0
                while x < g.size.width { p.move(to: .init(x: x, y: 0)); p.addLine(to: .init(x: x, y: g.size.height)); x += step }
                var y: CGFloat = 0
                while y < g.size.height { p.move(to: .init(x: 0, y: y)); p.addLine(to: .init(x: g.size.width, y: y)); y += step }
            }
            .stroke(accent.opacity(0.22), lineWidth: 0.5)
        }
    }

    private var spinningStrip: some View {
        let strip = symbols.isEmpty ? ["…"] : symbols
        return VStack(spacing: 0) {
            ForEach(0..<(strip.count * 3), id: \.self) { i in
                Text(strip[i % strip.count])
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundStyle(Brand.textPrimary.opacity(0.85))
                    .frame(height: rowHeight)
                    .frame(maxWidth: .infinity)
                    .lineLimit(1)
                    .minimumScaleFactor(0.55)
                    .padding(.horizontal, 4)
            }
        }
        .offset(y: spinOffset)
    }

    private func startSpin() {
        let strip = symbols.isEmpty ? ["…"] : symbols
        let totalHeight = CGFloat(strip.count) * rowHeight
        spinOffset = 0
        withAnimation(.linear(duration: 0.16).repeatForever(autoreverses: false)) {
            spinOffset = -totalHeight
        }
    }
}
