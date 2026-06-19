//
//  Exercise.swift
//  MuscleSlot
//
//  種目データの基本単位。アプリの土台。
//

import Foundation

struct Exercise: Identifiable, Hashable, Codable {
    /// 永続化・照合に使う安定キー。日本語名を不変IDとして使う（多言語化しても変えない）。
    var id: String { name }

    /// 日本語名（＝安定キー）。UI表示には `displayName` を使うこと。
    let name: String
    let bodyPart: BodyPart          // 表に出る大分類
    let subParts: [SubPart]         // 裏方の細分タグ（偏り防止）
    let equipment: [Equipment]      // 必要器具（6大分類）。空＝自重扱い
    let repRange: ClosedRange<Int>  // 実用モードの適正回数
    let unit: RepUnit
    let intensity: Intensity
    /// 種目の説明（効かせ方・フォームのコツ）。空のときはUIでプレースホルダ表示。日本語原文。
    let detail: String
    /// 動作手順（番号付きで表示）。始めの姿勢→動作→コツ/注意の3〜5手順。日本語原文。
    let steps: [String]

    // MARK: - 表示用（ロケール対応）
    // 英語ロケールでは ExerciseTranslations の英訳を返し、無ければ日本語にフォールバック。

    /// UI に出す種目名。英語ロケールでは自然な英語名。
    var displayName: String {
        ExerciseTranslations.entry(for: name)?.name ?? name
    }

    /// UI に出す概要。
    var localizedDetail: String {
        ExerciseTranslations.entry(for: name)?.detail ?? detail
    }

    /// UI に出す動作手順。
    var localizedSteps: [String] {
        let t = ExerciseTranslations.entry(for: name)?.steps
        return (t?.isEmpty == false) ? t! : steps
    }

    /// 判定ロジック: 種目の必要タグ ⊆ 環境の有効タグ なら出せる。
    /// 自重も普通の器具タグとして扱う（自重OFFなら自重種目も出ない）。
    func isAvailable(with available: Set<Equipment>) -> Bool {
        let required = Set(equipment)
        return required.isSubset(of: available)
    }

    init(_ name: String,
         _ bodyPart: BodyPart,
         sub: [SubPart] = [],
         equip: [Equipment] = [.bodyweight],
         reps: ClosedRange<Int>,
         unit: RepUnit = .reps,
         intensity: Intensity,
         detail: String = "",
         steps: [String] = []) {
        self.name = name
        self.bodyPart = bodyPart
        self.subParts = sub
        // 自重も必要器具タグとしてそのまま保持（自重OFFで自重種目も出なくする）。
        self.equipment = Array(Set(equip))
        self.repRange = reps
        self.unit = unit
        self.intensity = intensity
        self.detail = detail
        self.steps = steps
    }
}
