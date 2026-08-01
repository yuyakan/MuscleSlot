//
//  ConsentManager.swift
//  MuscleSlot
//
//  広告の同意フロー。UMP（Google User Messaging Platform）の同意取得と
//  ATT（App Tracking Transparency）の許可要求をまとめて行い、
//  同意が済んで広告を出せる状態になったら onReady で通知する。
//
//  推奨順序（Google のガイダンス）:
//    1. UMP: requestConsentInfoUpdate → loadAndPresentIfRequired（必要なら同意フォーム表示）
//    2. ATT: requestTrackingAuthorization（IDFA 許可。パーソナライズ広告に使う）
//    3. MobileAds.start() → 広告読み込み（canRequestAds が true のとき）
//

import SwiftUI
import GoogleMobileAds
import UserMessagingPlatform
import AppTrackingTransparency

@MainActor
@Observable
final class ConsentManager {

    /// 広告リクエスト可能になったら1回だけ呼ばれる（SDK起動＋先読みのトリガ）。
    private var onReady: (() -> Void)?
    /// onReady の二重呼び出し防止。
    private var didSignalReady = false

    /// 同意フロー一式を実行する。アプリ起動ごとに毎回呼んでよい（UMP推奨）。
    /// - Parameter onReady: 広告を出せる状態になったときの処理（SDK起動＋先読み）。
    func start(onReady: @escaping () -> Void) {
        self.onReady = onReady

        let parameters = RequestParameters()
        // 対象年齢は成人向け（子ども向け扱いにしない）。
        parameters.isTaggedForUnderAgeOfConsent = false

        ConsentInformation.shared.requestConsentInfoUpdate(with: parameters) { [weak self] error in
            guard let self else { return }
            Task { @MainActor in
                // 同意情報の更新が失敗しても広告表示自体は続行する（ノンパーソナライズ扱い）。
                if error == nil {
                    await self.presentFormIfNeeded()
                }
                // UMP の後に ATT を要求（IDFA 許可）。UMP が EEA 以外で不要でもここは通る。
                await self.requestATTIfNeeded()
                self.signalReadyIfPossible()
            }
        }
    }

    /// 同意フォームが必要なら表示する。不要なら即座に返る。
    private func presentFormIfNeeded() async {
        guard let root = Self.topViewController() else { return }
        do {
            try await ConsentForm.loadAndPresentIfRequired(from: root)
        } catch {
            // フォード表示に失敗しても続行（同意状態は取れているものを使う）。
        }
    }

    /// ATT 許可ダイアログを要求（未決定のときだけ OS がダイアログを出す）。
    private func requestATTIfNeeded() async {
        // 一度決定済みなら OS はダイアログを出さず現状態を返すので、毎回呼んでよい。
        _ = await ATTrackingManager.requestTrackingAuthorization()
    }

    /// canRequestAds が true なら onReady を1回だけ呼ぶ。
    private func signalReadyIfPossible() {
        guard !didSignalReady else { return }
        guard ConsentInformation.shared.canRequestAds else { return }
        didSignalReady = true
        onReady?()
        onReady = nil
    }

    /// UMP フォーム提示の起点となる最前面の UIViewController。
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
