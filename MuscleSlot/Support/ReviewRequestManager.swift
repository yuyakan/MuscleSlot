//
//  ReviewRequestManager.swift
//  MuscleSlot
//
//  App Store レビュー依頼ダイアログ（SKStoreReviewController 相当）を出す。
//  「いつ出すか」の頻度判定は呼び出し側（SlotScreen）が持ち、
//  ここは requestReview() で「今そのタイミングなら出す」だけを担う。
//

import SwiftUI
import UIKit
import StoreKit

/// レビュー依頼ダイアログの表示を担う。
///
/// 実際の表示可否・回数（年3回まで等）は OS が制御するため、
/// こちらが呼んでも必ず出るわけではない（Apple の仕様）。
/// 広告と被らないタイミングで呼ぶことだけを保証する。
@MainActor
@Observable
final class ReviewRequestManager {

    /// レビュー依頼を要求する。実際に出るかは OS 任せ。
    func requestReview() {
        guard let scene = Self.activeWindowScene() else { return }
        AppStore.requestReview(in: scene)
    }

    /// 現在フォアグラウンドの UIWindowScene。
    private static func activeWindowScene() -> UIWindowScene? {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first { $0.activationState == .foregroundActive }
    }
}
