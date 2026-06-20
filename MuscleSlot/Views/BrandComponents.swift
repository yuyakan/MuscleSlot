//
//  BrandComponents.swift
//  MuscleSlot
//
//  標準UI（Picker/Slider/Toggle/List/Button）に頼らず、ブランドで統一した部品群。
//

import SwiftUI

// MARK: - セグメント切替（Picker(.segmented) の置換）

/// ネオンの選択ピルが滑るセグメント。
struct BrandSegmented<T: Hashable>: View {
    let options: [(value: T, label: String)]
    @Binding var selection: T
    var accentGradient: LinearGradient
    var glow: Color

    @Namespace private var ns

    var body: some View {
        HStack(spacing: 4) {
            ForEach(options, id: \.value) { option in
                let isOn = option.value == selection
                Button {
                    withAnimation(.spring(response: 0.35, dampingFraction: 0.78)) {
                        selection = option.value
                    }
                    FeedbackEngine.shared.lock(enabled: true)
                } label: {
                    Text(option.label)
                        .font(Brand.Font.label)
                        .foregroundStyle(isOn ? Brand.ink : Brand.textSecondary)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 11)
                        .background {
                            if isOn {
                                Capsule()
                                    .fill(accentGradient)
                                    .matchedGeometryEffect(id: "seg", in: ns)
                                    .brandGlow(glow, radius: 8, strength: 0.7)
                            }
                        }
                }
                .buttonStyle(.plain)
            }
        }
        .padding(4)
        .background(
            Capsule().fill(Brand.inkDeep)
                .overlay(Capsule().strokeBorder(Brand.hairline, lineWidth: 1))
        )
    }
}

// MARK: - トグル（Toggle の置換）

struct BrandToggle: View {
    @Binding var isOn: Bool
    var accentGradient: LinearGradient
    var glow: Color

    var body: some View {
        Button {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) { isOn.toggle() }
            FeedbackEngine.shared.lock(enabled: true)
        } label: {
            ZStack(alignment: isOn ? .trailing : .leading) {
                Capsule()
                    .fill(isOn ? AnyShapeStyle(accentGradient) : AnyShapeStyle(Brand.inkDeep))
                    .overlay(Capsule().strokeBorder(Brand.hairline, lineWidth: 1))
                    .frame(width: 52, height: 31)
                    .brandGlow(isOn ? glow : .clear, radius: 8, strength: isOn ? 0.6 : 0)
                Circle()
                    .fill(.white)
                    .frame(width: 25, height: 25)
                    .padding(3)
            }
        }
        .buttonStyle(.plain)
    }
}

// MARK: - チップ（部位選択・器具トグルなど）

struct BrandChip: View {
    let label: String
    var systemImage: String?
    let isOn: Bool
    var dimmed: Bool = false
    var accentGradient: LinearGradient
    var glow: Color
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 6) {
                if let systemImage {
                    Image(systemName: systemImage).font(.system(size: 13, weight: .bold))
                }
                Text(label).font(Brand.Font.label)
            }
            .foregroundStyle(isOn ? Brand.ink : Brand.textPrimary)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 11)
            .background {
                if isOn {
                    Capsule().fill(accentGradient).brandGlow(glow, radius: 8, strength: 0.6)
                } else {
                    Capsule().fill(Brand.inkRaised)
                        .overlay(Capsule().strokeBorder(Brand.hairline, lineWidth: 1))
                }
            }
            .opacity(dimmed ? 0.35 : 1)
        }
        .buttonStyle(.plain)
    }
}

// MARK: - 主ボタン（引く・やる）

struct BrandPrimaryButton: View {
    let title: String
    var systemImage: String?
    var accentGradient: LinearGradient
    var glow: Color
    var enabled: Bool = true
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                if let systemImage { Image(systemName: systemImage) }
                Text(title)
            }
            .font(Brand.Font.title)
            .foregroundStyle(Brand.ink)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 17)
            .background(
                RoundedRectangle(cornerRadius: Brand.Radius.card, style: .continuous)
                    .fill(accentGradient)
            )
            .brandGlow(glow, radius: enabled ? 16 : 0, strength: enabled ? 0.7 : 0)
        }
        .buttonStyle(PressScaleStyle())
        .disabled(!enabled)
        .opacity(enabled ? 1 : 0.5)
    }
}

/// 押し込みで少し縮むボタンスタイル。
struct PressScaleStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.96 : 1)
            .animation(.spring(response: 0.25, dampingFraction: 0.6), value: configuration.isPressed)
    }
}

// MARK: - セクション見出し

struct BrandSectionHeader: View {
    let title: String
    var accent: Color

    var body: some View {
        HStack(spacing: 8) {
            Capsule().fill(accent).frame(width: 18, height: 3).brandGlow(accent, radius: 4)
            Text(title.uppercased())
                .font(Brand.Font.caption)
                .tracking(2)
                .foregroundStyle(Brand.textSecondary)
            Spacer()
        }
    }
}

// MARK: - タブ画面の見出し（シートのSheetHandleに対するタブ版・掴み手なし）

struct TabScreenHeader: View {
    let title: String

    var body: some View {
        HStack {
            Text(title)
                .font(Brand.Font.title)
                .foregroundStyle(Brand.textPrimary)
            Spacer()
        }
        .padding(.horizontal, 18)
        .padding(.top, 12)
        .padding(.bottom, 10)
    }
}

// MARK: - 丸いアイコンボタン（ヘッダ等）

struct BrandIconButton: View {
    let systemImage: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: systemImage)
                .font(.system(size: 17, weight: .bold))
                .foregroundStyle(Brand.textPrimary)
                .frame(width: 42, height: 42)
                .background(
                    Circle().fill(Brand.inkRaised)
                        .overlay(Circle().strokeBorder(Brand.hairline, lineWidth: 1))
                )
        }
        .buttonStyle(PressScaleStyle())
    }
}

