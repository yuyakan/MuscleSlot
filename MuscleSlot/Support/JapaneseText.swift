//
//  JapaneseText.swift
//  MuscleSlot
//
//  種目名を各言語で自然な位置に折り返すためのヘルパ。
//  AttributedString に言語タグを付けると、iOS が禁則処理や辞書ベースの改行を行い、
//  カタカナ語や中国語・タイ語の途中での不自然な改行を減らす。
//

import SwiftUI

extension String {
    /// 現在の UI 言語に応じた言語タグを付けた AttributedString。Text(_:) に渡して使う。
    /// CJK（日本語・中国語）とタイ語だけタグを付ける。空白で区切る言語
    /// （韓国語・ラテン系・キリル系）は標準の単語境界改行で十分なのでタグ無し。
    var jaWrapped: AttributedString {
        var s = AttributedString(self)
        switch AppLanguage.current {
        case "ja":      s.languageIdentifier = "ja"
        case "zh-Hans": s.languageIdentifier = "zh-Hans"
        case "zh-Hant": s.languageIdentifier = "zh-Hant"
        case "th":      s.languageIdentifier = "th"   // タイ語は空白なし→辞書ベース改行に必要
        default:        break
        }
        return s
    }
}
