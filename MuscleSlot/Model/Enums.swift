//
//  Enums.swift
//  MuscleSlot
//
//  基礎となる列挙型たち。部位・サブ部位・器具・強度・回数単位・モードなど。
//

import Foundation
import SwiftUI

// MARK: - 部位（表に出る大分類 6種）

enum BodyPart: String, Codable, CaseIterable, Identifiable, Hashable {
    case chest      // 胸
    case back       // 背中
    case legs       // 脚
    case shoulders  // 肩
    case arms       // 腕
    case core       // 体幹

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .chest:     return String(localized: "胸")
        case .back:      return String(localized: "背中")
        case .legs:      return String(localized: "脚")
        case .shoulders: return String(localized: "肩")
        case .arms:      return String(localized: "腕")
        case .core:      return String(localized: "体幹")
        }
    }

    var symbol: String {
        switch self {
        case .chest:     return "figure.arms.open"
        case .back:      return "figure.strengthtraining.functional"
        case .legs:      return "figure.run"
        case .shoulders: return "figure.boxing"
        case .arms:      return "dumbbell.fill"
        case .core:      return "figure.core.training"
        }
    }
}

// MARK: - サブ部位（裏方の細分タグ・偏り防止用、表には出さない）

enum SubPart: String, Codable, CaseIterable, Hashable {
    case chestUpper, chestMid, chestLower
    case backLat, backTrap, backLower
    case quads, hamstrings, glutes, calves
    case deltFront, deltSide, deltRear
    case biceps, triceps, forearms
    case absUpper, absLower, oblique
}

// MARK: - 器具（大分類6種・ラク優先）

enum Equipment: String, Codable, CaseIterable, Identifiable, Hashable {
    case bodyweight // 自重
    case dumbbell   // ダンベル（ケトルベル・ベンチ同梱）
    case barbell    // バーベル（ベンチ同梱）
    case machine    // マシン類（ケーブル・スミス込み）
    case band       // バンド
    case pullupBar  // 懸垂バー

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .bodyweight: return String(localized: "自重")
        case .dumbbell:   return String(localized: "ダンベル")
        case .barbell:    return String(localized: "バーベル")
        case .machine:    return String(localized: "マシン類")
        case .band:       return String(localized: "バンド")
        case .pullupBar:  return String(localized: "懸垂バー")
        }
    }

    var symbol: String {
        switch self {
        case .bodyweight: return "figure.strengthtraining.traditional"
        case .dumbbell:   return "dumbbell.fill"
        case .barbell:    return "figure.strengthtraining.functional"
        case .machine:    return "gearshape.2.fill"
        case .band:       return "alternatingcurrent"
        case .pullupBar:  return "figure.gymnastics"
        }
    }
}

// MARK: - 強度タイプ → 標準回数レンジ

enum Intensity: String, Codable, CaseIterable, Hashable {
    case heavy      // 高重量コンパウンド 3〜8回
    case moderate   // ダンベル・マシン 8〜12回
    case light      // 自重・アイソレーション 12〜20回

    var displayName: String {
        switch self {
        case .heavy:    return String(localized: "高重量")
        case .moderate: return String(localized: "中重量")
        case .light:    return String(localized: "軽め")
        }
    }
}

// MARK: - 回数の単位

enum RepUnit: String, Codable, Hashable {
    case reps     // 回
    case seconds  // 秒

    /// 回数の単位表記。日本語は数値に直結（「12回」）、英語は半角スペース付き（「12 reps」）。
    var suffix: String {
        switch self {
        case .reps:    return String(localized: "回", comment: "rep unit suffix; English includes a leading space")
        case .seconds: return String(localized: "秒", comment: "seconds unit suffix; English includes a leading space")
        }
    }

    /// 回数レンジ設定スライダーの選択可能な絶対範囲（単位別）。
    var chaosRange: ClosedRange<Int> {
        switch self {
        case .reps:    return 1...100
        case .seconds: return 10...180
        }
    }
}

// MARK: - モード（実用 / おまかせ）
// 注: case名・raw値（practical/chaos）は永続化・エンジンが依存するため不変。表示名のみ変更。

enum SlotMode: String, Codable, CaseIterable, Hashable {
    case practical  // 実用
    case chaos      // おまかせ（旧カオス。raw値は維持）

    var displayName: String {
        switch self {
        case .practical: return String(localized: "実用")
        case .chaos:     return String(localized: "おまかせ")
        }
    }
}

// MARK: - スロットパターン（何をランダムにするか）
// 下タブで切り替える。リールの本数と固定する入力が変わる。

enum SlotPattern: String, Codable, CaseIterable, Identifiable, Hashable {
    case full         // 部位＋種目＋回数（全部おまかせ）
    case partExercise // 部位＋種目（回数は出さない）
    case repsOnly     // 回数だけ（部位・種目はユーザーが選ぶ）

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .full:         return String(localized: "フル", comment: "tab: full random")
        case .partExercise: return String(localized: "種目", comment: "tab: exercise")
        case .repsOnly:     return String(localized: "回数", comment: "tab: reps")
        }
    }

    /// 下タブのアイコン。
    var symbol: String {
        switch self {
        case .full:         return "die.face.5.fill"
        case .partExercise: return "figure.strengthtraining.traditional"
        case .repsOnly:     return "repeat"
        }
    }

    // 表示するリール（残りは非表示にして残りを大きく見せる）。
    var showsPartReel: Bool {
        switch self {
        case .full, .partExercise: return true
        case .repsOnly:            return false
        }
    }
    var showsExerciseReel: Bool {
        switch self {
        case .full, .partExercise: return true
        case .repsOnly:            return false
        }
    }
    var showsRepsReel: Bool {
        switch self {
        case .full, .repsOnly:  return true
        case .partExercise:     return false
        }
    }

    /// ユーザーが部位・種目を選んでから引くパターンか。
    var needsManualPick: Bool { self == .repsOnly }
}

// MARK: - 器具プリセット

enum EquipmentPreset: String, Codable, CaseIterable, Identifiable, Hashable {
    case homeBodyweight // 宅トレ（自重）
    case homeGym        // ホームジム
    case fullGym        // フルジム

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .homeBodyweight: return String(localized: "宅トレ（自重）")
        case .homeGym:        return String(localized: "ホームジム")
        case .fullGym:        return String(localized: "フルジム")
        }
    }

    var subtitle: String {
        switch self {
        case .homeBodyweight: return String(localized: "自重のみ（＋懸垂バーは任意）")
        case .homeGym:        return String(localized: "ダンベル・ベンチ・バンド・自重")
        case .fullGym:        return String(localized: "全部入り")
        }
    }

    /// プリセットはカスタムの初期値。地続きの関係。
    var equipment: Set<Equipment> {
        switch self {
        case .homeBodyweight:
            return [.bodyweight]
        case .homeGym:
            return [.bodyweight, .dumbbell, .band]
        case .fullGym:
            return Set(Equipment.allCases)
        }
    }
}
