//
//  SlotEngine.swift
//  MuscleSlot
//
//  抽選の心臓部。器具フィルター → 部位プール確定 → 部位→種目→回数の順次確定。
//  カオスはこの依存を断ち切って回数を独立ランダムにする。
//  バランス補正は履歴の経過日数で重み付き抽選する。
//

import Foundation

struct SlotEngine {

    // MARK: 入力

    /// 抽選の文脈。UIの選択状態をまとめたもの。
    struct Context {
        var mode: SlotMode
        var chaos: ChaosLevel
        var equipment: Set<Equipment>
        /// スロット対象として有効な種目（Exercise.id の集合）。
        var enabledExercises: Set<String>
        /// パターンでユーザーが部位を固定したとき（部位だけ抽選しない）。
        var fixedBodyPart: BodyPart? = nil
        /// パターンでユーザーが種目を固定したとき（回数だけ抽選する）。
        var fixedExercise: Exercise? = nil
    }

    // MARK: - プール（器具＋種目選択フィルター）

    /// 器具で実行可能、かつユーザーがONにしている種目だけのプール。
    private static func pool(for context: Context) -> [Exercise] {
        ExerciseDatabase.available(with: context.equipment)
            .filter { context.enabledExercises.contains($0.id) }
    }

    // MARK: - 出せる部位

    /// 処理順序: プールを絞ってから、実行可能な種目が1つ以上ある部位だけを対象にする。
    static func eligibleBodyParts(for context: Context) -> [BodyPart] {
        let parts = Set(pool(for: context).map(\.bodyPart))
        return BodyPart.allCases.filter { parts.contains($0) }
    }

    // MARK: - 1回引く

    /// 順次確定の最終結果を返す。出せる種目が無ければ nil。
    static func roll(_ context: Context) -> SlotResult? {
        // --- 種目が固定（回数だけ）: プール判定を飛ばして回数だけ引く ---
        if let exercise = context.fixedExercise {
            let count = count(for: exercise, context: context)
            return SlotResult(bodyPart: exercise.bodyPart, exercise: exercise, count: count)
        }

        let pool = pool(for: context)
        guard !pool.isEmpty else { return nil }

        // --- 部位を決める（固定があればそれを使う） ---
        let bodyPart = context.fixedBodyPart ?? pickBodyPart(context: context, pool: pool)
        guard let bodyPart else { return nil }

        // --- 種目を決める ---
        let exercise = pickExercise(bodyPart: bodyPart, context: context, pool: pool)
        guard let exercise else { return nil }

        // --- 回数を決める（種目に依存） ---
        let count = count(for: exercise, context: context)
        return SlotResult(bodyPart: exercise.bodyPart, exercise: exercise, count: count)
    }

    // MARK: - 部位抽選

    private static func pickBodyPart(context: Context, pool: [Exercise]) -> BodyPart? {
        let eligible = BodyPart.allCases.filter { part in
            pool.contains { $0.bodyPart == part }
        }
        guard !eligible.isEmpty else { return nil }

        // ふり幅全開は部位無視＝全プールから引くので、種目側に委ねるため均等に。
        if context.chaos.ignoresBodyPart {
            // 全プールから一様に種目を引く想定 → その種目の部位を採用。
            return pool.randomElement()?.bodyPart
        }

        return eligible.randomElement()
    }

    // MARK: - 種目抽選

    private static func pickExercise(bodyPart: BodyPart,
                                     context: Context,
                                     pool: [Exercise]) -> Exercise? {
        // 部位が固定されているときは、その部位プールからのみ引く（カオスのミックスを無視）。
        if context.fixedBodyPart != nil {
            let inPart = pool.filter { $0.bodyPart == bodyPart }
            return inPart.randomElement()
        }

        // ふり幅全開: 部位無視で全プールから。
        if context.chaos.ignoresBodyPart {
            return pool.randomElement()
        }

        // ふつう以上: たまにミックス（他部位が混ざる）。
        if Double.random(in: 0..<1) < context.chaos.mixProbability {
            return pool.randomElement()
        }

        let inPart = pool.filter { $0.bodyPart == bodyPart }
        return inPart.randomElement() ?? pool.randomElement()
    }

    // MARK: - 回数抽選

    /// 実用は種目の適正レンジ、カオスはカオス度に応じて散らす。
    private static func count(for exercise: Exercise, context: Context) -> Int {
        switch context.mode {
        case .practical:
            return Int.random(in: exercise.repRange)
        case .chaos:
            return context.chaos.reps(for: exercise)
        }
    }
}
