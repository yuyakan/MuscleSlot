//
//  SplashView.swift
//  MuscleSlot
//
//  起動時のスプラッシュ。アセット `splush` を全画面表示し、軽い演出のあと本編へフェード。
//  横向き専用アプリなので safe area を無視して全面に敷く。
//

import SwiftUI

struct SplashView: View {
    // スプラッシュ画像の地色に合わせた色（splush.png のコーナー実測 ≒ RGB(2,6,14)）。
    private let bg = Color(red: 2/255, green: 6/255, blue: 14/255)
    @State private var appear = false

    var body: some View {
        ZStack {
            bg.ignoresSafeArea()
            Image("splush")
                .resizable()
                .scaledToFit()
                .scaleEffect(appear ? 1.0 : 0.92)
                .opacity(appear ? 1 : 0)
                .ignoresSafeArea()
        }
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) { appear = true }
        }
    }
}
