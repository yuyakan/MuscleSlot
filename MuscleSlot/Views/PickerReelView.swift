//
//  PickerReelView.swift
//  MuscleSlot
//
//  ReelView と同じ筐体の見た目で、中身を上下スワイプで選べる自前ドラム。
//  「回数だけ」パターンで部位・種目をリールから直接選ぶのに使う。
//  .wheel ピッカーは使わない（グレーの選択楕円・1行省略を避けるため）。
//

import SwiftUI

struct PickerReelView<Item: Hashable>: View {
    let title: String
    let items: [Item]
    /// 各項目の表示文字列。
    let label: (Item) -> String
    @Binding var selection: Item?
    let accent: Color
    var rowHeight: CGFloat = 96
    /// 項目が空のときの案内文。
    var emptyHint: String = "なし"

    /// 1項目の高さ（選択バンドと一致させる）。
    private let itemHeight: CGFloat = 44

    /// ドラッグ中の一時オフセット。
    @State private var dragOffset: CGFloat = 0

    /// 現在選択中の index（selection と同期）。
    private var selectedIndex: Int {
        guard let selection, let i = items.firstIndex(of: selection) else { return 0 }
        return i
    }

    var body: some View {
        VStack(spacing: 8) {
            Text(title.uppercased())
                .font(Brand.Font.caption)
                .tracking(1.5)
                .foregroundStyle(Brand.textSecondary)

            ZStack {
                // 窓
                RoundedRectangle(cornerRadius: Brand.Radius.reel, style: .continuous)
                    .fill(
                        LinearGradient(colors: [Brand.inkRaised, Brand.inkDeep],
                                       startPoint: .top, endPoint: .bottom)
                    )

                if items.isEmpty {
                    Text(emptyHint)
                        .font(Brand.Font.body)
                        .foregroundStyle(Brand.textTertiary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 8)
                } else {
                    drum
                }

                // 中央の選択枠（ここに来た項目が選択中）。
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .strokeBorder(accent.opacity(0.6), lineWidth: 1.5)
                    .frame(height: itemHeight)
                    .padding(.horizontal, 6)
                    .allowsHitTesting(false)

                // 上下のフェード（覗き窓）
                VStack {
                    LinearGradient(colors: [Brand.inkDeep, .clear], startPoint: .top, endPoint: .bottom)
                        .frame(height: 26)
                    Spacer()
                    LinearGradient(colors: [.clear, Brand.inkDeep], startPoint: .top, endPoint: .bottom)
                        .frame(height: 26)
                }
                .allowsHitTesting(false)
            }
            .frame(minHeight: rowHeight, maxHeight: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: Brand.Radius.reel, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: Brand.Radius.reel, style: .continuous)
                    .strokeBorder(selection != nil ? accent : Brand.hairline,
                                  lineWidth: selection != nil ? 1.5 : 1)
            )
            .brandGlow(selection != nil ? accent : .clear, radius: 10, strength: 0.45)
        }
    }

    // MARK: - 自前ドラム

    private var drum: some View {
        GeometryReader { geo in
            let mid = geo.size.height / 2
            // 中央に選択行が来るよう全体をずらす。
            let baseY = mid - CGFloat(selectedIndex) * itemHeight + dragOffset
            ZStack {
                ForEach(items.indices, id: \.self) { i in
                    let y = baseY + CGFloat(i) * itemHeight
                    let dist = abs(y - mid) / itemHeight        // 中央からの距離（行単位）
                    if dist < 3.2 {                             // 近い行だけ描画
                        itemText(items[i], dist: dist)
                            .frame(width: geo.size.width - 12, height: itemHeight)
                            .position(x: geo.size.width / 2, y: y)
                    }
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .contentShape(Rectangle())
            .gesture(dragGesture(geoHeight: geo.size.height))
        }
    }

    private func itemText(_ item: Item, dist: CGFloat) -> some View {
        Text(label(item))
            .font(Brand.Font.reel)
            .foregroundStyle(Brand.textPrimary)
            .multilineTextAlignment(.center)
            .lineLimit(2)
            .minimumScaleFactor(0.55)
            .padding(.horizontal, 8)
            .opacity(Double(max(0.25, 1 - dist * 0.42)))
            .scaleEffect(max(0.78, 1 - dist * 0.12))
    }

    private func dragGesture(geoHeight: CGFloat) -> some Gesture {
        DragGesture()
            .onChanged { g in dragOffset = g.translation.height }
            .onEnded { g in
                // 移動量を行数に変換して選択を更新。
                let moved = -(g.translation.height + g.predictedEndTranslation.height * 0.2) / itemHeight
                let target = (CGFloat(selectedIndex) + moved).rounded()
                let clamped = Int(min(max(target, 0), CGFloat(items.count - 1)))
                withAnimation(.spring(response: 0.35, dampingFraction: 0.8)) {
                    dragOffset = 0
                    selection = items[clamped]
                }
            }
    }
}
