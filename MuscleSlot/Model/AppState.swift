//
//  AppState.swift
//  MuscleSlot
//
//  画面横断のUI状態と、永続化するユーザー設定。
//  デフォルトは「全部おまかせrandom、こだわりたい人だけ軽く触れる」。
//

import Foundation
import SwiftUI
import Observation

@Observable
final class AppState {

    // MARK: - 永続化する設定（UserDefaults）

    /// モード切替は廃止。スロットの挙動は「ふり幅」スライダー（chaosValue）に一本化。
    /// 内部的には常に .chaos 固定で、ふり幅0＝実用相当〜ふり幅大＝散る、という連続挙動。
    let mode: SlotMode = .chaos
    /// 0.0...1.0
    var chaosValue: Double {
        didSet { defaults.set(chaosValue, forKey: Keys.chaos) }
    }
    /// 下タブで選んでいるスロットパターン。
    var pattern: SlotPattern {
        didSet { defaults.set(pattern.rawValue, forKey: Keys.pattern) }
    }
    /// 「回数だけ」パターンでユーザーが選んだ部位（rawValue 保存）。
    var pickedBodyPart: BodyPart? {
        didSet { defaults.set(pickedBodyPart?.rawValue, forKey: Keys.pickedPart) }
    }
    /// 「回数だけ」パターンでユーザーが選んだ種目（id=name 保存）。
    var pickedExerciseID: String? {
        didSet { defaults.set(pickedExerciseID, forKey: Keys.pickedExercise) }
    }
    var equipment: Set<Equipment> {
        didSet { defaults.set(equipment.map(\.rawValue), forKey: Keys.equipment) }
    }
    var preset: EquipmentPreset {
        didSet { defaults.set(preset.rawValue, forKey: Keys.preset) }
    }
    var soundEnabled: Bool {
        didSet { defaults.set(soundEnabled, forKey: Keys.sound) }
    }
    var hapticsEnabled: Bool {
        didSet { defaults.set(hapticsEnabled, forKey: Keys.haptics) }
    }
    /// オンボーディング完了フラグ。
    var didOnboard: Bool {
        didSet { defaults.set(didOnboard, forKey: Keys.onboard) }
    }
    /// スロット対象にする種目（Exercise.id=name の集合）。未保存なら全ON。
    var enabledExercises: Set<String> {
        didSet { defaults.set(Array(enabledExercises), forKey: Keys.exercises) }
    }

    var chaos: ChaosLevel { ChaosLevel(value: chaosValue) }

    /// pickedExerciseID から実体を逆引き。
    var pickedExercise: Exercise? {
        guard let id = pickedExerciseID else { return nil }
        return ExerciseDatabase.all.first { $0.id == id }
    }

    // MARK: - 初期化

    private let defaults: UserDefaults

    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults

        self.chaosValue = defaults.object(forKey: Keys.chaos) as? Double ?? 0.5

        self.pattern = SlotPattern(rawValue: defaults.string(forKey: Keys.pattern) ?? "")
            ?? .full
        self.pickedBodyPart = (defaults.string(forKey: Keys.pickedPart))
            .flatMap(BodyPart.init(rawValue:))
        self.pickedExerciseID = defaults.string(forKey: Keys.pickedExercise)

        if let raw = defaults.stringArray(forKey: Keys.equipment) {
            self.equipment = Set(raw.compactMap(Equipment.init(rawValue:)))
        } else {
            self.equipment = EquipmentPreset.homeBodyweight.equipment
        }
        self.preset = EquipmentPreset(rawValue: defaults.string(forKey: Keys.preset) ?? "")
            ?? .homeBodyweight

        self.soundEnabled = defaults.object(forKey: Keys.sound) as? Bool ?? false
        self.hapticsEnabled = defaults.object(forKey: Keys.haptics) as? Bool ?? true
        self.didOnboard = defaults.bool(forKey: Keys.onboard)

        if let raw = defaults.stringArray(forKey: Keys.exercises) {
            self.enabledExercises = Set(raw)
        } else {
            self.enabledExercises = Set(ExerciseDatabase.all.map(\.id))
        }
    }

    // MARK: - 操作

    /// プリセット選択。プリセットはカスタムの初期値なので equipment も更新する。
    func applyPreset(_ preset: EquipmentPreset) {
        self.preset = preset
        self.equipment = preset.equipment
    }

    func toggleEquipment(_ item: Equipment) {
        if equipment.contains(item) {
            equipment.remove(item)
        } else {
            equipment.insert(item)
        }
    }

    // MARK: - 「回数だけ」パターンの部位・種目選択

    /// 部位を選び直したら種目はクリア（別部位の種目が残らないように）。
    func pickBodyPart(_ part: BodyPart) {
        if pickedBodyPart != part { pickedExerciseID = nil }
        pickedBodyPart = part
    }

    func pickExercise(_ ex: Exercise) {
        pickedBodyPart = ex.bodyPart
        pickedExerciseID = ex.id
    }

    // MARK: - 種目のON/OFF（スロット対象）

    func isEnabled(_ ex: Exercise) -> Bool { enabledExercises.contains(ex.id) }

    func toggleExercise(_ ex: Exercise) {
        if enabledExercises.contains(ex.id) {
            enabledExercises.remove(ex.id)
        } else {
            enabledExercises.insert(ex.id)
        }
    }

    /// 部位ごとの全選択/全解除。
    func setExercises(_ part: BodyPart, enabled: Bool) {
        let ids = ExerciseDatabase.all.filter { $0.bodyPart == part }.map(\.id)
        var s = enabledExercises
        if enabled { s.formUnion(ids) } else { s.subtract(ids) }
        enabledExercises = s
    }

    // MARK: - キー

    private enum Keys {
        static let chaos = "ms.chaos"
        static let pattern = "ms.pattern"
        static let pickedPart = "ms.pickedPart"
        static let pickedExercise = "ms.pickedExercise"
        static let equipment = "ms.equipment"
        static let preset = "ms.preset"
        static let sound = "ms.sound"
        static let haptics = "ms.haptics"
        static let onboard = "ms.onboard"
        static let exercises = "ms.exercises"
    }
}
