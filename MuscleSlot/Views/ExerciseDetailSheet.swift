//
//  ExerciseDetailSheet.swift
//  MuscleSlot
//
//  種目の説明シート。リール左のインフォと種目設定画面のインフォで共用する。
//  内容: メタチップ（部位／回数／強度）＋概要＋番号付き「動作」手順＋見出し右の「動画で見る」。
//  回数チップは「引いた結果」がある画面でだけ出すため countLabel を任意で受け取る。
//

import SwiftUI

struct ExerciseDetailSheet: View {
    let exercise: Exercise
    /// 「引いた結果」の回数ラベル。nil ならメタチップに回数を出さない（種目設定画面など）。
    var countLabel: String? = nil
    let onClose: () -> Void

    @Environment(\.openURL) private var openURL
    // iPad 判定（regular×regular は iPhone では発生しない）。iPhone は常に false。
    @Environment(\.horizontalSizeClass) private var hSizeClass
    @Environment(\.verticalSizeClass) private var vSizeClass
    private var isPad: Bool { hSizeClass == .regular && vSizeClass == .regular }
    /// iPad では本文の文字を一回り大きく見せる拡大率（iPhone は等倍）。
    private var contentScale: CGFloat { isPad ? 1.4 : 1.0 }

    private var accent: Color { Brand.fixedAccent }
    private var grad: LinearGradient { Brand.fixedGradient }

    /// iPad で size を contentScale 倍したフォント（iPhone は元のサイズ）。テキストは折り返しが効く。
    private func scaled(_ size: CGFloat, weight: SwiftUI.Font.Weight, design: SwiftUI.Font.Design = .rounded) -> SwiftUI.Font {
        .system(size: size * contentScale, weight: weight, design: design)
    }

    var body: some View {
        ZStack {
            Brand.fixedBackground()
            VStack(spacing: 0) {
                SheetHandle(title: exercise.displayName, accent: accent, onClose: onClose)
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 18) {
                        // メタ情報のチップ列
                        metaChips

                        // 概要（detail）
                        if !exercise.localizedDetail.isEmpty {
                            Text(exercise.localizedDetail)
                                .font(scaled(15, weight: .medium)).foregroundStyle(Brand.textSecondary)
                                .fixedSize(horizontal: false, vertical: true)
                        }

                        // 動作手順（iPhone は見出し右に「動画で見る」を併置）
                        if !exercise.localizedSteps.isEmpty {
                            stepsSection(exercise.localizedSteps)
                        } else if exercise.localizedDetail.isEmpty {
                            Text("説明準備中")
                                .font(scaled(15, weight: .medium)).foregroundStyle(Brand.textTertiary)
                        }

                        // iPad は説明の下に大きいフル幅の「動画で見る」ボタンを配置。
                        if isPad {
                            videoButtonLarge
                                .padding(.top, 6)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(18)
                }
            }
        }
        .presentationBackground(.clear)
        .presentationDetents([.medium, .large])
        // iPad ではフォームシートが小さく見えるので、大きめのページサイズにする。
        // iPhone は presentationSizing を無視し、従来どおり detents で表示される。
        .presentationSizing(.page)
    }

    // MARK: - メタチップ

    private var metaChips: some View {
        HStack(spacing: 8) {
            metaChip(exercise.bodyPart.displayName, icon: exercise.bodyPart.symbol)
            if let countLabel {
                metaChip(countLabel, icon: "number")
            }
            metaChip(exercise.intensity.displayName, icon: "flame.fill")
        }
    }

    private func metaChip(_ text: String, icon: String) -> some View {
        HStack(spacing: 5) {
            Image(systemName: icon).font(scaled(11, weight: .bold))
            Text(text).font(scaled(11, weight: .semibold))
        }
        .foregroundStyle(accent)
        .padding(.horizontal, 11 * contentScale).padding(.vertical, 7 * contentScale)
        .background(
            Capsule().fill(accent.opacity(0.14))
                .overlay(Capsule().strokeBorder(accent.opacity(0.4), lineWidth: 1))
        )
    }

    // MARK: - 動作手順

    /// 番号バッジ付きの動作手順。見出し行の右端にフォーム動画ボタンを併置する。
    private func stepsSection(_ steps: [String]) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .center) {
                Label("動作", systemImage: "figure.run")
                    .font(scaled(17, weight: .bold)).foregroundStyle(Brand.textPrimary)
                Spacer(minLength: 12)
                // iPad では手順の下に大きいボタンを別途出すので、ここでは出さない。
                if !isPad { videoButton }
            }
            ForEach(Array(steps.enumerated()), id: \.offset) { i, step in
                HStack(alignment: .top, spacing: 12) {
                    Text("\(i + 1)")
                        .font(scaled(14, weight: .black))
                        .foregroundStyle(Brand.ink)
                        .frame(width: 26 * contentScale, height: 26 * contentScale)
                        .background(Circle().fill(grad).brandGlow(accent, radius: 4, strength: 0.4))
                    Text(step)
                        .font(scaled(15, weight: .medium)).foregroundStyle(Brand.textSecondary)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 3)
                }
            }
        }
    }

    // MARK: - フォーム動画ボタン

    /// フォームの参考動画を YouTube 検索で探すボタン。
    /// 同梱動画は持たず、外部で「種目名で検索済み」の状態に飛ばす。
    private var videoButton: some View {
        Button(action: openVideo) {
            HStack(spacing: 8) {
                Image(systemName: "play.rectangle.fill")
                    .font(scaled(16, weight: .bold))
                Text("動画で見る")
                    .font(scaled(15, weight: .medium))
                Image(systemName: "arrow.up.forward")
                    .font(scaled(12, weight: .bold)).foregroundStyle(Brand.textTertiary)
            }
            .foregroundStyle(accent)
            .padding(.horizontal, 16 * contentScale).padding(.vertical, 11 * contentScale)
            .background(
                Capsule().fill(accent.opacity(0.14))
                    .overlay(Capsule().strokeBorder(accent.opacity(0.4), lineWidth: 1))
            )
        }
        .buttonStyle(.plain)
        .fixedSize()
    }

    /// iPad 用の大きいフル幅版。説明の下に置く。
    private var videoButtonLarge: some View {
        Button(action: openVideo) {
            HStack(spacing: 10) {
                Image(systemName: "play.rectangle.fill")
                    .font(scaled(20, weight: .bold))
                Text("動画で見る")
                    .font(scaled(18, weight: .bold))
                Spacer(minLength: 8)
                Image(systemName: "arrow.up.forward")
                    .font(scaled(15, weight: .bold)).foregroundStyle(Brand.textTertiary)
            }
            .foregroundStyle(accent)
            .padding(.horizontal, 22).padding(.vertical, 18)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(accent.opacity(0.14))
                    .overlay(
                        RoundedRectangle(cornerRadius: 18, style: .continuous)
                            .strokeBorder(accent.opacity(0.4), lineWidth: 1)
                    )
            )
        }
        .buttonStyle(.plain)
    }

    /// YouTube アプリがあればアプリで、無ければ Safari で検索結果を開く。
    private func openVideo() {
        guard let appURL = exercise.youtubeAppURL else {
            if let web = exercise.youtubeWebURL { openURL(web) }
            return
        }
        openURL(appURL) { accepted in
            if !accepted, let web = exercise.youtubeWebURL {
                openURL(web)
            }
        }
    }
}
