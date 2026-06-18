//
//  SlotLever.swift
//  MuscleSlot
//
//  横向きスロット筐体の右端に立つ「引くレバー」。
//  タップ or 下方向ドラッグで発火。引く→ノブが下がる→離すとばねで戻る。
//

import SwiftUI

struct SlotLever: View {
    /// 回転中はレバーを無効化する。
    var isSpinning: Bool
    /// 出せる種目が無いなど、引けない状態。
    var disabled: Bool = false
    var accent: Color
    var grad: LinearGradient
    var hapticsEnabled: Bool = true
    /// レバーを引ききったときに一度だけ呼ばれる。
    var onPull: () -> Void

    /// 0=上（待機） … 1=下（引いた）
    @State private var pull: CGFloat = 0
    @State private var fired = false

    private let knob: CGFloat = 40

    var body: some View {
        GeometryReader { geo in
            let h = geo.size.height
            let travel = max(40, h - knob - 24) // ノブが動ける距離
            VStack(spacing: 10) {
                ZStack(alignment: .top) {
                    // 溝（トラック）
                    Capsule()
                        .fill(Brand.inkDeep)
                        .overlay(Capsule().strokeBorder(Brand.hairline, lineWidth: 1))
                        .frame(width: 16)

                    // シャフト（ノブまでの棒）
                    Capsule()
                        .fill(grad)
                        .frame(width: 8, height: knob / 2 + pull * travel)
                        .brandGlow(accent, radius: 6, strength: 0.5)
                        .padding(.top, 6)

                    // ノブ
                    Circle()
                        .fill(.white)
                        .frame(width: knob, height: knob)
                        .overlay(Circle().fill(grad).padding(8))
                        .overlay(Circle().strokeBorder(.white.opacity(0.5), lineWidth: 1))
                        .brandGlow(accent, radius: 12, strength: 0.8)
                        .offset(y: pull * travel)
                }
                .frame(maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
            .opacity(disabled ? 0.4 : 1)
            .gesture(dragGesture(travel: travel))
            .onTapGesture { if canFire { fire() } }
        }
    }

    private var canFire: Bool { !isSpinning && !disabled }

    private func dragGesture(travel: CGFloat) -> some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged { g in
                guard canFire else { return }
                // 下方向のドラッグ量を 0...1 に正規化。
                let p = min(1, max(0, g.translation.height / travel))
                pull = p
                if p >= 0.85 && !fired { fire() }
            }
            .onEnded { _ in
                withAnimation(.spring(response: 0.4, dampingFraction: 0.55)) { pull = 0 }
                fired = false
            }
    }

    private func fire() {
        guard !fired else { return }
        fired = true
        FeedbackEngine.shared.lock(enabled: hapticsEnabled, strong: true)
        withAnimation(.spring(response: 0.22, dampingFraction: 0.7)) { pull = 1 }
        onPull()
        // 少し下げてからばねで戻す。
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.18) {
            withAnimation(.spring(response: 0.45, dampingFraction: 0.5)) { pull = 0 }
            fired = false
        }
    }
}
