//
//  SheetHandle.swift
//  MuscleSlot
//
//  シート共通の掴み手＋タイトル＋閉じるボタン。
//

import SwiftUI

struct SheetHandle: View {
    let title: String
    let accent: Color
    var onClose: () -> Void

    var body: some View {
        VStack(spacing: 12) {
            Capsule().fill(Brand.textTertiary).frame(width: 40, height: 5).padding(.top, 10)
            HStack {
                Text(title).font(Brand.Font.title).foregroundStyle(Brand.textPrimary)
                Spacer()
                Button(action: onClose) {
                    Image(systemName: "xmark")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundStyle(Brand.textPrimary)
                        .frame(width: 36, height: 36)
                        .background(Circle().fill(Brand.inkRaised)
                            .overlay(Circle().strokeBorder(Brand.hairline, lineWidth: 1)))
                }
                .buttonStyle(PressScaleStyle())
            }
            .padding(.horizontal, 18)
        }
        .padding(.bottom, 8)
    }
}
