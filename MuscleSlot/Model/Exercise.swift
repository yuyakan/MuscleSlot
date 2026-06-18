//
//  Exercise.swift
//  MuscleSlot
//
//  種目データの基本単位。アプリの土台。
//

import Foundation

struct Exercise: Identifiable, Hashable, Codable {
    var id: String { name }

    let name: String
    let bodyPart: BodyPart          // 表に出る大分類
    let subParts: [SubPart]         // 裏方の細分タグ（偏り防止）
    let equipment: [Equipment]      // 必要器具（6大分類）。空＝自重扱い
    let repRange: ClosedRange<Int>  // 実用モードの適正回数
    let unit: RepUnit
    let intensity: Intensity
    /// 種目の説明（効かせ方・フォームのコツ）。空のときはUIでプレースホルダ表示。
    let detail: String
    /// 動作手順（番号付きで表示）。始めの姿勢→動作→コツ/注意の3〜5手順。
    let steps: [String]

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
