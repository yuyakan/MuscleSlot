//
//  SlotMachineModel.swift
//  MuscleSlot
//
//  スロット演出の進行管理。部位→種目→回数の順に一拍ずつ確定させる。
//

import SwiftUI
import Observation

@MainActor
@Observable
final class SlotMachineModel {

    enum Phase: Equatable {
        case idle
        case spinningPart
        case spinningExercise
        case spinningReps
        case done
    }

    var phase: Phase = .idle

    // 各リールの確定表示（nil＝未確定）。
    var partLabel: String = "？"
    var exerciseLabel: String = "？"
    var repsLabel: String = "？"

    var result: SlotResult?
    var noResult = false

    private var feedback: FeedbackEngine { .shared }

    var isSpinning: Bool {
        phase == .spinningPart || phase == .spinningExercise || phase == .spinningReps
    }

    var partSpinning: Bool { phase == .spinningPart }
    var exerciseSpinning: Bool { phase == .spinningExercise }
    var repsSpinning: Bool { phase == .spinningReps }

    // MARK: - 1種目を引く（フル演出）

    /// パターンに応じて回すリールだけを順に確定させる。
    /// 表示しないリールのフェーズはスキップする（結果 outcome 自体は常に完全）。
    func spinSingle(context: SlotEngine.Context, app: AppState, pattern: SlotPattern) async {
        guard !isSpinning else { return }
        noResult = false

        guard let outcome = SlotEngine.roll(context) else {
            noResult = true
            result = nil
            return
        }

        // 回転時間はふり幅に連動（ふり幅大ほど長く派手に回る）。
        let durationUnit = 0.95 * app.chaos.spinDurationMultiplier

        // リセット表示。
        result = nil
        partLabel = "？"; exerciseLabel = "？"; repsLabel = "？"

        // 最後に回るリールを判定して finale 用の強フィードバックを当てる。
        let lastReel: Phase = pattern.showsRepsReel ? .spinningReps
            : pattern.showsExerciseReel ? .spinningExercise
            : .spinningPart

        // --- 部位 ---
        if pattern.showsPartReel {
            phase = .spinningPart
            await spinTicks(duration: durationUnit, app: app)
            partLabel = outcome.bodyPart.displayName
            feedback.lock(enabled: app.hapticsEnabled, strong: lastReel == .spinningPart)
            feedback.lockSound(enabled: app.soundEnabled)
        }

        // --- 種目 ---
        if pattern.showsExerciseReel {
            phase = .spinningExercise
            await spinTicks(duration: durationUnit, app: app)
            exerciseLabel = outcome.exercise.name
            feedback.lock(enabled: app.hapticsEnabled, strong: lastReel == .spinningExercise)
            feedback.lockSound(enabled: app.soundEnabled)
        }

        // --- 回数 ---
        if pattern.showsRepsReel {
            phase = .spinningReps
            await spinTicks(duration: durationUnit, app: app)
            repsLabel = outcome.countLabel
            feedback.lock(enabled: app.hapticsEnabled, strong: true)
            feedback.lockSound(enabled: app.soundEnabled)
        }

        result = outcome
        phase = .done
        feedback.finale(enabled: app.hapticsEnabled)
    }

    // MARK: - 回転中のチク音/振動

    private func spinTicks(duration: Double, app: AppState) async {
        let tickInterval = 0.07
        var elapsed = 0.0
        while elapsed < duration {
            feedback.tick(enabled: app.hapticsEnabled)
            feedback.clickSound(enabled: app.soundEnabled)
            try? await Task.sleep(for: .seconds(tickInterval))
            elapsed += tickInterval
        }
    }

    func reset() {
        phase = .idle
        partLabel = "？"; exerciseLabel = "？"; repsLabel = "？"
        result = nil
        noResult = false
    }
}
