//
//  Exercise+Video.swift
//  MuscleSlot
//
//  種目フォームの参考動画を「外部で探す」ための遷移先URL。
//  動画は同梱せず、YouTube の検索結果へ飛ばすだけ（権利・容量の問題を回避）。
//  YouTube アプリがあればアプリで、無ければ Safari で開ける2段構え。
//

import Foundation

extension Exercise {

    /// YouTube 検索に使うクエリ。表示名（ロケール対応）に各言語の絞り込み語を足して精度を上げる。
    /// 例: 英語なら「<英名> exercise form」、日本語なら「<和名> 筋トレ」。
    var videoSearchQuery: String {
        let suffix: String
        switch AppLanguage.current {
        case "en":          suffix = "exercise form"
        case "zh-Hans":     suffix = "健身 动作"
        case "zh-Hant":     suffix = "健身 動作"
        case "ko":          suffix = "운동 자세"
        case "es":          suffix = "ejercicio técnica"
        case "fr":          suffix = "exercice technique"
        case "de":          suffix = "Übung Ausführung"
        case "pt-BR", "pt": suffix = "exercício execução"
        case "it":          suffix = "esercizio esecuzione"
        case "ru":          suffix = "упражнение техника"
        case "id":          suffix = "latihan teknik"
        case "th":          suffix = "ท่าออกกำลังกาย"
        default:            suffix = "筋トレ"   // ja
        }
        return "\(displayName) \(suffix)"
    }

    /// YouTube アプリを直接開くための URL（`youtube://`）。
    /// アプリ未インストールなら openURL が失敗するので、その時は web 版へフォールバックする。
    var youtubeAppURL: URL? {
        makeYouTubeURL(scheme: "youtube://results")
    }

    /// ブラウザ（Safari）で開く YouTube 検索 URL。フォールバック先。
    var youtubeWebURL: URL? {
        makeYouTubeURL(scheme: "https://www.youtube.com/results")
    }

    private func makeYouTubeURL(scheme: String) -> URL? {
        var components = URLComponents(string: scheme)
        components?.queryItems = [URLQueryItem(name: "search_query", value: videoSearchQuery)]
        return components?.url
    }
}
