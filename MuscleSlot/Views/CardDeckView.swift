//
//  CardDeckView.swift
//  MuscleSlot
//
//  「種目」パターン用のネオン/サイバー カルーセル演出。
//  複数のカードが横に高速で流れ、減速して中央の1枚に止まる（確定）。
//  他画面のブランドトーンに合わせず、ここだけ派手なネオン配色にしている。
//

import SwiftUI

struct CardDeckView: View {
    /// 流すカードの候補（種目名）。
    let pool: [String]
    /// 回転中か。true の間カルーセルが流れる。
    let isSpinning: Bool
    /// 確定結果。
    let resultTitle: String?      // 種目名
    let resultSubtitle: String?   // 部位名
    let settled: Bool
    /// 種目名 → 部位名（未確定でも中央カードに部位を出すための逆引き）。
    var subtitleFor: (String) -> String? = { _ in nil }
    /// 中央に来ているカードの種目名が変わったら通知（説明ボタン用）。
    var onCenterChange: (String) -> Void = { _ in }

    // 他画面と同じく固定アクセント1色で統一（青みを混ぜない）。
    private let neonA = Brand.fixedAccent
    private var neonB: Color { Brand.fixedAccent }

    /// 流れているカードの帯。pool をループさせた長い配列。
    @State private var strip: [String] = []
    /// 横スクロール位置（カード単位の連続値）。
    @State private var scroll: Double = 0
    @State private var spinTask: Task<Void, Never>?
    @State private var glowPulse = false

    private let cardW: CGFloat = 180
    private let cardH: CGFloat = 200
    private let spacing: CGFloat = 18

    var body: some View {
        GeometryReader { geo in
            let center = geo.size.width / 2
            ZStack {
                carousel(center: center)
                // 中央のフォーカス枠（ここに来たカードが当たり）。
                centerFrame
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onAppear {
            if strip.isEmpty {
                strip = makeStrip()
                scroll = 4   // 中央の左右にカードがある位置から始める
            }
            glowPulse = true
            notifyCenter()
        }
        .onChange(of: isSpinning) { _, spinning in
            if spinning { startSpin() }
        }
        .onChange(of: settled) { _, done in
            if done { stopAtResult() }
        }
        .onChange(of: scroll) { _, _ in notifyCenter() }
    }

    /// 中央カードの種目名を親へ通知。
    private func notifyCenter() {
        guard !strip.isEmpty else { return }
        let idx = max(0, min(strip.count - 1, Int(scroll.rounded())))
        onCenterChange(strip[idx])
    }

    // MARK: - カルーセル

    private func carousel(center: CGFloat) -> some View {
        ZStack {
            ForEach(strip.indices, id: \.self) { i in
                let rel = Double(i) - scroll            // 中央からの距離（カード単位）
                let x = CGFloat(rel) * (cardW + spacing)
                // 中央に近いほど大きく・明るく。
                let dist = min(abs(rel), 3)
                let scale = 1.0 - dist * 0.16
                let opacity = 1.0 - dist * 0.33
                if abs(rel) <= 3 {
                    card(text: strip[i], focused: abs(rel) < 0.5)
                        .scaleEffect(scale)
                        .opacity(opacity)
                        .offset(x: x)
                        .zIndex(abs(rel) < 0.5 ? 10 : (3 - dist))
                }
            }
        }
        .offset(x: center - center) // 中央基準（ZStackは元々中央寄せ）
    }

    private func card(text: String, focused: Bool) -> some View {
        let title = focused && settled ? (resultTitle ?? text) : text
        // 中央カードは確定前でも部位名を出す（確定後は結果の部位、流れている間は逆引き）。
        let subtitle: String? = focused
            ? (settled ? resultSubtitle : subtitleFor(title))
            : nil
        return Text(title.jaWrapped)
            .font(.system(size: 26, weight: .black, design: .rounded))
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .lineLimit(3).minimumScaleFactor(0.5)
            .shadow(color: focused ? neonA.opacity(0.9) : .clear, radius: 8)
            .padding(.horizontal, 14)
            .offset(y: 12)                                   // 中央よりやや下げる
            .frame(width: cardW, height: cardH)
            .overlay(alignment: .top) {                      // 部位名は上部に重ねるだけ（中央の位置に影響させない）
                if let sub = subtitle {
                    Text(sub.uppercased())
                        .font(.system(size: 13, weight: .heavy, design: .rounded))
                        .tracking(3)
                        .foregroundStyle(neonA)
                        .padding(.top, 18)
                }
            }
            .background(cardBackground(focused: focused))
            .overlay(cardBorder(focused: focused))
            .shadow(color: focused ? neonB.opacity(glowPulse ? 0.7 : 0.4) : .black.opacity(0.4),
                    radius: focused ? 24 : 8)
    }

    private func cardBackground(focused: Bool) -> some View {
        RoundedRectangle(cornerRadius: 22, style: .continuous)
            .fill(
                LinearGradient(
                    colors: focused
                        ? [Color(white: 0.10), Color(hue: 0.52, saturation: 0.5, brightness: 0.16)]
                        : [Color(white: 0.07), Color(white: 0.04)],
                    startPoint: .top, endPoint: .bottom)
            )
            .overlay(gridOverlay.opacity(focused ? 0.5 : 0.18)
                .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous)))
    }

    private func cardBorder(focused: Bool) -> some View {
        RoundedRectangle(cornerRadius: 22, style: .continuous)
            .strokeBorder(
                LinearGradient(colors: [neonA, neonB], startPoint: .topLeading, endPoint: .bottomTrailing),
                lineWidth: focused ? 2.5 : 1)
            .opacity(focused ? 1 : 0.4)
    }

    /// カード内の細いグリッド（サイバー感）。
    private var gridOverlay: some View {
        GeometryReader { g in
            Path { p in
                let step: CGFloat = 22
                var x: CGFloat = 0
                while x < g.size.width { p.move(to: .init(x: x, y: 0)); p.addLine(to: .init(x: x, y: g.size.height)); x += step }
                var y: CGFloat = 0
                while y < g.size.height { p.move(to: .init(x: 0, y: y)); p.addLine(to: .init(x: g.size.width, y: y)); y += step }
            }
            .stroke(neonA.opacity(0.25), lineWidth: 0.5)
        }
    }

    // MARK: - 中央枠

    private var centerFrame: some View {
        RoundedRectangle(cornerRadius: 24, style: .continuous)
            .strokeBorder(
                LinearGradient(colors: [neonA, neonB], startPoint: .top, endPoint: .bottom),
                lineWidth: 2)
            .frame(width: cardW + 16, height: cardH + 16)
            .shadow(color: neonA.opacity(0.7), radius: glowPulse ? 18 : 10)
            .opacity(settled ? 1 : 0.5)
            .animation(.easeInOut(duration: 1.1).repeatForever(autoreverses: true), value: glowPulse)
    }


    // MARK: - 回転制御

    private func makeStrip() -> [String] {
        let base = pool.isEmpty ? ["？"] : pool
        // 十分な長さにループ。
        var s: [String] = []
        for _ in 0..<8 { s += base.shuffled() }
        return s
    }

    private func startSpin() {
        strip = makeStrip()
        scroll = 4   // 左右にカードがある位置から流し始める
        spinTask?.cancel()
        spinTask = Task { @MainActor in
            // 速度を徐々に落としながらスクロール（減速して止まる感）。
            var velocity = 0.9          // カード/フレーム
            let frame = 0.016
            while !Task.isCancelled && isSpinning {
                scroll += velocity
                velocity = max(0.05, velocity * 0.985)
                FeedbackEngine.shared.tick(enabled: true)
                try? await Task.sleep(for: .seconds(frame))
            }
        }
    }

    private func stopAtResult() {
        spinTask?.cancel()
        spinTask = nil
        // 結果カードを中央(strip末尾付近の整数位置)へスナップ。
        // 末尾側に結果名を差し込んでそこへ寄せる。
        if let title = resultTitle {
            var s = strip
            let target = Int(scroll.rounded()) + 2
            while s.count <= target { s += (pool.isEmpty ? ["？"] : pool).shuffled() }
            s[target] = title
            strip = s
            withAnimation(.spring(response: 0.55, dampingFraction: 0.8)) {
                scroll = Double(target)
            }
            FeedbackEngine.shared.lock(enabled: true, strong: true)
        }
    }
}
