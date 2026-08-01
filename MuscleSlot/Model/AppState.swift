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

    // MARK: 回数・秒数レンジ（ユーザーが上下限を決める）
    // 種目の単位ごとに別レンジ（「3秒プランク」のような単位ミスマッチを防ぐ）。
    // 抽選はこのレンジ内で一様に引く（SlotEngine.count）。

    /// 「適正範囲を適用」: ON なら各種目の repRange、OFF ならユーザー指定レンジで抽選。
    var useRepRange: Bool {
        didSet { defaults.set(useRepRange, forKey: Keys.useRepRange) }
    }
    /// 回数種目の下限（reps）。
    var repsMin: Int {
        didSet { defaults.set(repsMin, forKey: Keys.repsMin) }
    }
    /// 回数種目の上限（reps）。
    var repsMax: Int {
        didSet { defaults.set(repsMax, forKey: Keys.repsMax) }
    }
    /// 秒数種目の下限（seconds）。
    var secsMin: Int {
        didSet { defaults.set(secsMin, forKey: Keys.secsMin) }
    }
    /// 秒数種目の上限（seconds）。
    var secsMax: Int {
        didSet { defaults.set(secsMax, forKey: Keys.secsMax) }
    }

    /// 単位に応じたユーザー指定レンジ（下限 ≤ 上限を保証）。
    func countRange(for unit: RepUnit) -> ClosedRange<Int> {
        switch unit {
        case .reps:    return min(repsMin, repsMax)...max(repsMin, repsMax)
        case .seconds: return min(secsMin, secsMax)...max(secsMin, secsMax)
        }
    }

    // MARK: - セッション限定の状態（永続化しない）

    /// 結果が出た「引き」の通し番号。全タブ共通で、広告/レビューの表示頻度判定に使う。
    /// アプリを起動し直すとリセットされる（意図的に永続化しない）。
    var spinCount = 0

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

        // 既定は「適正範囲を適用」ON（各種目の適正回数で出す）。
        self.useRepRange = defaults.object(forKey: Keys.useRepRange) as? Bool ?? true

        // ユーザー指定レンジの既定は単位の許容上限いっぱい（OFF時に使う）。
        let repsBounds = RepUnit.reps.chaosRange
        let secsBounds = RepUnit.seconds.chaosRange
        self.repsMin = defaults.object(forKey: Keys.repsMin) as? Int ?? repsBounds.lowerBound
        self.repsMax = defaults.object(forKey: Keys.repsMax) as? Int ?? repsBounds.upperBound
        self.secsMin = defaults.object(forKey: Keys.secsMin) as? Int ?? secsBounds.lowerBound
        self.secsMax = defaults.object(forKey: Keys.secsMax) as? Int ?? secsBounds.upperBound
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
        static let useRepRange = "ms.useRepRange"
        static let repsMin = "ms.repsMin"
        static let repsMax = "ms.repsMax"
        static let secsMin = "ms.secsMin"
        static let secsMax = "ms.secsMax"
    }
}
