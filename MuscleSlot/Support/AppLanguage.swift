//
//  AppLanguage.swift
//  MuscleSlot
//
//  端末のロケールを、アプリが対応する言語コードに解決する単一の窓口。
//  種目データ（ExerciseTranslations）・改行制御（jaWrapped）・動画検索クエリが
//  すべてここを経由する。未対応ロケールは英語にフォールバックする。
//

import Foundation

enum AppLanguage {

    /// 対応する言語コード。ja はソース言語、未対応時のフォールバックは en。
    /// 種目データのテーブルキーとも一致させる（ja は原文なのでテーブルを持たない）。
    static let supported = ["ja", "en", "zh-Hans", "zh-Hant", "ko", "es", "fr", "de",
                            "pt-BR", "pt", "it", "ru", "id", "th"]

    /// 現在の UI 言語に対応する解決済みコード。必ず supported のいずれかを返す。
    static var current: String { resolve(Locale.preferredLanguages.first) }

    /// 生のロケール識別子（例: "en-US", "zh-Hant-TW"）を対応コードへ正規化する。
    /// - 中国語: 字体（簡体/繁体）で分け、地域は無視。
    /// - ポルトガル語: ブラジルのみ pt-BR、それ以外は pt。
    /// - その他: 地域を落とした基底コードで一致を探す。
    /// - 未対応: en（英語フォールバック）。
    static func resolve(_ raw: String?) -> String {
        guard let raw else { return "en" }
        let lower = raw.lowercased()

        if lower.hasPrefix("zh") {
            if lower.contains("hant") || lower.contains("tw") ||
               lower.contains("hk") || lower.contains("mo") {
                return "zh-Hant"
            }
            return "zh-Hans"
        }

        if lower.hasPrefix("pt") {
            return lower.contains("br") ? "pt-BR" : "pt"
        }

        let base = String(lower.split(separator: "-").first ?? "")
        for code in supported where code.lowercased() == base {
            return code
        }
        return "en"
    }
}
