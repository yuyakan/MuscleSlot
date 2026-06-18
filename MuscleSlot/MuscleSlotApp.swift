//
//  MuscleSlotApp.swift
//  MuscleSlot
//
//  Created by 上別縄祐也 on 2026/06/14.
//

import SwiftUI

@main
struct MuscleSlotApp: App {
    @State private var appState = AppState()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(appState)
                .preferredColorScheme(.dark)
        }
    }
}

struct RootView: View {
    @Environment(AppState.self) private var app

    var body: some View {
        // オンボーディング（器具プリセット選択）は廃止。器具は AppState の既定
        // （宅トレ＝自重）で開始し、種目ボタンの絞り込みからいつでも変更できる。
        MainTabView()
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
