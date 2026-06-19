//
//  JapaneseText.swift
//  MuscleSlot
//
//  日本語の種目名を自然な位置で折り返すためのヘルパ。
//  AttributedString に日本語ロケールを付けると、iOS が禁則処理＋
//  単語境界を考慮した改行を行い、カタカナ語の途中での不自然な改行を減らす。
//

import SwiftUI

extension String {
    /// 日本語ロケールを付与した AttributedString。Text(_:) に渡して使う。
    /// 英語ロケールでは言語タグを付けない（英語テキストに日本語の禁則改行を当てないため）。
    var jaWrapped: AttributedString {
        var s = AttributedString(self)
        if !ExerciseTranslations.usesEnglish {
            s.languageIdentifier = "ja"
        }
        return s
    }
}
