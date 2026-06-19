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

    /// YouTube 検索に使うクエリ。表示名（ロケール対応）に絞り込み語を足して精度を上げる。
    /// 英語ロケールでは英語名＋"exercise form"、日本語では日本語名＋"筋トレ"。
    var videoSearchQuery: String {
        if ExerciseTranslations.usesEnglish {
            return "\(displayName) exercise form"
        }
        return "\(displayName) 筋トレ"
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
