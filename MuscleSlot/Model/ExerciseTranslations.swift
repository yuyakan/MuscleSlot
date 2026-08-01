//
//  ExerciseTranslations.swift
//  MuscleSlot
//
//  種目データ（名前・概要・手順）の多言語訳。
//  キーは Exercise.name（日本語＝安定ID）。現在の UI 言語（AppLanguage.current）で
//  テーブルを引き、未登録・日本語ロケールなら日本語原文にフォールバックする
//  （Exercise の localized* プロパティ参照）。
//
//  種目名はフィットネスで実際に使われる自然な表現を採用する（直訳しない）。
//  各言語の本体は ExerciseTranslations+Entries_<lang>.swift に分割している。
//

import Foundation

enum ExerciseTranslations {

    struct Entry {
        let name: String
        let detail: String
        let steps: [String]
    }

    /// 言語コード → (日本語名 → Entry)。
    /// ja は原文がソースなので意図的に持たない（引くと nil → 日本語フォールバック）。
    static let tables: [String: [String: Entry]] = [
        "en":      entries_en,
        "zh-Hans": entries_zhHans,
        "zh-Hant": entries_zhHant,
        "ko":      entries_ko,
        "es":      entries_es,
        "fr":      entries_fr,
        "de":      entries_de,
        "pt-BR":   entries_ptBR,
        "pt":      entries_pt,
        "it":      entries_it,
        "ru":      entries_ru,
        "id":      entries_id,
        "th":      entries_th,
    ]

    /// 日本語名から現在の UI 言語の訳を引く。
    /// 日本語ロケール・未対応言語・未登録キーは nil（＝日本語原文へフォールバック）。
    static func entry(for japaneseName: String) -> Entry? {
        guard let table = tables[AppLanguage.current] else { return nil }
        return table[japaneseName]
    }
}
