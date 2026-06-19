//
//  ExerciseTranslations.swift
//  MuscleSlot
//
//  種目データ（名前・概要・手順）の英語訳。
//  キーは Exercise.name（日本語＝安定ID）。英語ロケールのときだけ参照され、
//  未登録なら日本語原文にフォールバックする（Exercise の localized* プロパティ参照）。
//
//  種目名はフィットネスで実際に使われる自然な英語表現を採用する（直訳しない）。
//

import Foundation

enum ExerciseTranslations {

    struct Entry {
        let name: String
        let detail: String
        let steps: [String]
    }

    /// 現在のロケールが英語系かどうか。英語以外では翻訳を使わず日本語原文を出す。
    static var usesEnglish: Bool {
        let lang = Locale.preferredLanguages.first ?? Locale.current.identifier
        return lang.lowercased().hasPrefix("en")
    }

    /// 日本語名から英訳エントリを引く。英語ロケールでなければ nil（＝日本語にフォールバック）。
    static func entry(for japaneseName: String) -> Entry? {
        guard usesEnglish else { return nil }
        return map[japaneseName]
    }

    /// 日本語名 → 英訳。
    static let map: [String: Entry] = entries
}
