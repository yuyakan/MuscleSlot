//
//  MuscleSlotApp.swift
//  MuscleSlot
//
//  Created by 上別縄祐也 on 2026/06/14.
//

import SwiftUI
import GoogleMobileAds

@main
struct MuscleSlotApp: App {
    @State private var appState = AppState()
    /// インタースティシャル広告。頻度判定は SlotScreen 側。
    @State private var ads = InterstitialAdManager()
    /// レビュー依頼ダイアログ。頻度判定は SlotScreen 側（広告と被らないタイミング）。
    @State private var review = ReviewRequestManager()
    /// 広告同意フロー（UMP同意＋ATT許可）。同意が済んでからSDK起動＋先読みする。
    @State private var consent = ConsentManager()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(appState)
                .environment(ads)
                .environment(review)
                .environment(consent)
                .preferredColorScheme(.dark)
                .task {
                    // UMP同意→ATT許可を取り、広告可能になったらSDK起動＋先読み。
                    consent.start {
                        MobileAds.shared.start(completionHandler: nil)
                        ads.preload()
                    }
                }
        }
    }
}

struct RootView: View {
    @Environment(AppState.self) private var app

    /// スプラッシュ表示中フラグ。一定時間後にフェードで本編へ。
    @State private var showSplash = true

    var body: some View {
        ZStack {
            // オンボーディング（器具プリセット選択）は廃止。器具は AppState の既定
            // （宅トレ＝自重）で開始し、種目ボタンの絞り込みからいつでも変更できる。
            MainTabView()

            if showSplash {
                SplashView()
                    .transition(.opacity)
                    .zIndex(1)
            }
        }
        .task {
            // スプラッシュを約1.6秒見せてからフェードアウト。
            try? await Task.sleep(for: .seconds(1.6))
            withAnimation(.easeInOut(duration: 0.5)) { showSplash = false }
        }
    }
}

/// 下タブでスロットパターンを切り替えるメイン。選択は AppState.pattern に永続化。
struct MainTabView: View {
    @Environment(AppState.self) private var app

    var body: some View {
        @Bindable var app = app
        TabView(selection: $app.pattern) {
            ForEach(SlotPattern.allCases) { pattern in
                SlotScreen(pattern: pattern)
                    .environment(app)
                    .tabItem {
                        Label(pattern.displayName, systemImage: pattern.symbol)
                    }
                    .tag(pattern)
            }
        }
        .tint(Brand.fixedAccent)
    }
}
