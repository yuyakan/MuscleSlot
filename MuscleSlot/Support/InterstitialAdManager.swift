//
//  InterstitialAdManager.swift
//  MuscleSlot
//
//  AdMob インタースティシャル（全画面）広告の読み込み・表示を一元管理する。
//  何回に1回出すか等の頻度判定は呼び出し側（SlotScreen）が持ち、
//  ここは「読み込み」と「今すぐ表示」だけを担う。
//

import SwiftUI
import GoogleMobileAds

/// インタースティシャル広告のライフサイクル管理。
///
/// 起動時に1本先読みしておき、表示のたびに次を先読みする（`InterstitialAd` は使い捨てのため）。
/// 表示タイミング（頻度）は呼び出し側が決め、ここは `show()` で即時表示するだけ。
@MainActor
@Observable
final class InterstitialAdManager: NSObject {

    // MARK: - 広告ユニットID

    /// インタースティシャルの広告ユニットID。
    /// デバッグビルドでは Google 公式のテストID（常にテスト広告が返る）、
    /// リリースビルドでは本番IDを使う。これでテスト中に本番広告を踏んで
    /// 無効なインプレッション扱いになるのを防ぐ。
    private static let adUnitID: String = {
        #if DEBUG
        return "ca-app-pub-3940256099942544/4411468910"      // Google公式テストID
        #else
        return "ca-app-pub-3155724310732667/9439701854"      // 本番
        #endif
    }()

    // MARK: - 状態

    private var interstitial: InterstitialAd?
    /// 二重読み込み防止。
    private var isLoading = false

    // MARK: - 読み込み

    /// 広告を先読みする。すでに保持済み／読み込み中なら何もしない。
    func preload() {
        guard interstitial == nil, !isLoading else { return }
        isLoading = true
        Task {
            do {
                interstitial = try await InterstitialAd.load(
                    with: Self.adUnitID,
                    request: Request()
                )
                interstitial?.fullScreenContentDelegate = self
            } catch {
                // 読み込み失敗時は握りつぶす（広告はあくまで任意表示）。
                interstitial = nil
            }
            isLoading = false
        }
    }

    // MARK: - 表示

    /// 準備できていれば全画面広告を即表示。無ければ先読みだけして今回は見送る。
    /// 表示できなくても（未読み込みなど）スロット体験は止めない。
    func show() {
        guard let interstitial, let root = Self.topViewController() else {
            preload()
            return
        }
        interstitial.present(from: root)
    }

    /// 現在最前面の UIViewController を取得（present の起点）。
    private static func topViewController() -> UIViewController? {
        let scene = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first { $0.activationState == .foregroundActive }
        var top = scene?.windows.first(where: \.isKeyWindow)?.rootViewController
        while let presented = top?.presentedViewController {
            top = presented
        }
        return top
    }
}

// MARK: - FullScreenContentDelegate

extension InterstitialAdManager: FullScreenContentDelegate {

    /// 表示に失敗したら使い捨てて次を先読み。
    func ad(_ ad: FullScreenPresentingAd,
            didFailToPresentFullScreenContentWithError error: Error) {
        interstitial = nil
        preload()
    }

    /// 閉じられたら使い捨てて次を先読み（`InterstitialAd` は1回しか表示できない）。
    func adDidDismissFullScreenContent(_ ad: FullScreenPresentingAd) {
        interstitial = nil
        preload()
    }
}
