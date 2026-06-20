//
//  RangeSliderView.swift
//  MuscleSlot
//
//  2つまみのレンジスライダー（min〜max）。回数・秒数レンジの指定に使う。
//  ブランド配色のネオン調。整数値・スナップ。
//

import SwiftUI

struct RangeSliderView: View {
    @Binding var lower: Int
    @Binding var upper: Int
    /// 選択可能な絶対範囲。
    let bounds: ClosedRange<Int>
    var accent: Color = Brand.fixedAccent
    /// 下限と上限の最小間隔（これ以上は近づけない）。
    var minGap: Int = 1

    private let knob: CGFloat = 26
    private let track: CGFloat = 8

    var body: some View {
        GeometryReader { geo in
            let w = geo.size.width
            let span = max(1, CGFloat(bounds.upperBound - bounds.lowerBound))
            let xLower = position(for: lower, width: w, span: span)
            let xUpper = position(for: upper, width: w, span: span)

            ZStack(alignment: .leading) {
                // トラック
                Capsule().fill(Brand.inkDeep)
                    .overlay(Capsule().strokeBorder(Brand.hairline, lineWidth: 1))
                    .frame(height: track)
                // 選択区間
                Capsule().fill(accent)
                    .frame(width: max(0, xUpper - xLower), height: track)
                    .offset(x: xLower + knob / 2)
                    .brandGlow(accent, radius: 6, strength: 0.5)
                // 下つまみ
                thumb.offset(x: xLower)
                    .gesture(drag(width: w, span: span, isLower: true))
                // 上つまみ
                thumb.offset(x: xUpper)
                    .gesture(drag(width: w, span: span, isLower: false))
            }
            .frame(maxHeight: .infinity)
            .contentShape(Rectangle())
        }
        .frame(height: 28)
    }

    private var thumb: some View {
        Circle().fill(.white)
            .frame(width: knob, height: knob)
            .overlay(Circle().fill(accent).padding(6))
            .brandGlow(accent, radius: 10, strength: 0.9)
    }

    /// 値 → つまみの x 位置（トラック幅は両端の knob 半径ぶん内側）。
    private func position(for value: Int, width: CGFloat, span: CGFloat) -> CGFloat {
        let ratio = CGFloat(value - bounds.lowerBound) / span
        return ratio * (width - knob)
    }

    /// x 位置 → 値（スナップ）。
    private func value(atX x: CGFloat, width: CGFloat, span: CGFloat) -> Int {
        let ratio = max(0, min(1, (x - knob / 2) / (width - knob)))
        return bounds.lowerBound + Int((ratio * span).rounded())
    }

    private func drag(width: CGFloat, span: CGFloat, isLower: Bool) -> some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged { g in
                let v = value(atX: g.location.x, width: width, span: span)
                if isLower {
                    lower = min(v, upper - minGap)
                    lower = max(lower, bounds.lowerBound)
                } else {
                    upper = max(v, lower + minGap)
                    upper = min(upper, bounds.upperBound)
                }
            }
    }
}
