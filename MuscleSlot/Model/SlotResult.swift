//
//  SlotResult.swift
//  MuscleSlot
//
//  1回引いた結果（部位・種目・回数）。
//

import Foundation

struct SlotResult: Identifiable, Hashable {
    let id = UUID()
    let bodyPart: BodyPart
    let exercise: Exercise
    let count: Int

    var unit: RepUnit { exercise.unit }
    var countLabel: String { "\(count)\(unit.suffix)" }
}
