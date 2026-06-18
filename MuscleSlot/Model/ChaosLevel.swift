//
//  ChaosLevel.swift
//  MuscleSlot
//
//  スライダー1本の裏で複数パラメータが連動する。
//  破綻（笑える理不尽）はカオスの身上。不可能（器具が無い）は器具フィルターで常に排除。
//

import Foundation

/// 0.0（ぬるい）〜 1.0（ヤバい）の連続値を、段階的な挙動に解釈する。
struct ChaosLevel {
    /// 0.0 ... 1.0
    let value: Double

    enum Tier: Int {
        case mild   // ぬるい
        case medium // ふつう
        case wild   // ヤバい

        var displayName: String {
            switch self {
            case .mild:   return "ぬるい"
            case .medium: return "ふつう"
            case .wild:   return "ヤバい"
            }
        }
    }

    var tier: Tier {
        switch value {
        case ..<0.34: return .mild
        case ..<0.67: return .medium
        default:      return .wild
        }
    }

    /// 部位無視で全プールから引くか（ヤバいのみ）。
    var ignoresBodyPart: Bool { tier == .wild }

    /// たまにミックス（ふつう以上で他部位が混ざる確率）。
    var mixProbability: Double {
        switch tier {
        case .mild:   return 0.0
        case .medium: return 0.25
        case .wild:   return 1.0 // 実質ignoresBodyPartで吸収
        }
    }

    /// 演出: リールが回る時間の倍率。上げるほど長く派手に回る。
    var spinDurationMultiplier: Double {
        1.0 + value * 1.4
    }

    /// 実用適正レンジを起点に、回数をどう散らすか決める。
    /// - mild: 適正レンジ内
    /// - medium: レンジを少し広げる
    /// - wild: 完全ランダム（unit別の上限）
    func reps(for exercise: Exercise) -> Int {
        switch tier {
        case .mild:
            return Int.random(in: exercise.repRange)

        case .medium:
            let lower = max(exercise.unit.chaosRange.lowerBound,
                            exercise.repRange.lowerBound - widen(exercise))
            let upper = min(exercise.unit.chaosRange.upperBound,
                            exercise.repRange.upperBound + widen(exercise))
            return Int.random(in: lower...upper)

        case .wild:
            return Int.random(in: exercise.unit.chaosRange)
        }
    }

    /// 「ふつう」でレンジを広げる幅。reps と seconds で感覚をそろえる。
    private func widen(_ exercise: Exercise) -> Int {
        switch exercise.unit {
        case .reps:    return 6
        case .seconds: return 15
        }
    }
}
