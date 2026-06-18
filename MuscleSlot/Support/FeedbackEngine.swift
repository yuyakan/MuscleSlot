//
//  FeedbackEngine.swift
//  MuscleSlot
//
//  ハプティクスとサウンド。止まる瞬間のガチッでスロット感を出す最大の武器。
//  サウンドはオン/オフ設定（電車内対応）。
//

import Foundation
import CoreHaptics
import AVFoundation
import UIKit

@MainActor
final class FeedbackEngine {
    static let shared = FeedbackEngine()

    private var engine: CHHapticEngine?
    private let supportsHaptics = CHHapticEngine.capabilitiesForHardware().supportsHaptics

    private init() {
        prepareHaptics()
    }

    private func prepareHaptics() {
        guard supportsHaptics else { return }
        do {
            engine = try CHHapticEngine()
            try engine?.start()
            engine?.resetHandler = { [weak self] in
                try? self?.engine?.start()
            }
        } catch {
            engine = nil
        }
    }

    // MARK: - リール回転中の連続カチカチ

    /// 回転中の軽い連続フィードバック。引数 intensity で激しさを調整。
    func tick(enabled: Bool) {
        guard enabled else { return }
        if supportsHaptics, let engine {
            let event = CHHapticEvent(
                eventType: .hapticTransient,
                parameters: [
                    .init(parameterID: .hapticIntensity, value: 0.4),
                    .init(parameterID: .hapticSharpness, value: 0.7)
                ],
                relativeTime: 0)
            playPattern([event], engine: engine)
        } else {
            UIImpactFeedbackGenerator(style: .light).impactOccurred(intensity: 0.5)
        }
    }

    // MARK: - 止まる瞬間のガチッ

    /// リールが1つ止まる瞬間の決定的なフィードバック。
    func lock(enabled: Bool, strong: Bool = false) {
        guard enabled else { return }
        if supportsHaptics, let engine {
            let intensity: Float = strong ? 1.0 : 0.85
            let event = CHHapticEvent(
                eventType: .hapticTransient,
                parameters: [
                    .init(parameterID: .hapticIntensity, value: intensity),
                    .init(parameterID: .hapticSharpness, value: 0.9)
                ],
                relativeTime: 0)
            playPattern([event], engine: engine)
        } else {
            UIImpactFeedbackGenerator(style: strong ? .heavy : .medium).impactOccurred()
        }
    }

    /// 全リール確定時のごほうび的フィードバック。
    func finale(enabled: Bool) {
        guard enabled else { return }
        if supportsHaptics, let engine {
            var events: [CHHapticEvent] = []
            for i in 0..<3 {
                events.append(CHHapticEvent(
                    eventType: .hapticTransient,
                    parameters: [
                        .init(parameterID: .hapticIntensity, value: 0.7 + Float(i) * 0.1),
                        .init(parameterID: .hapticSharpness, value: 0.6)
                    ],
                    relativeTime: Double(i) * 0.08))
            }
            playPattern(events, engine: engine)
        } else {
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        }
    }

    private func playPattern(_ events: [CHHapticEvent], engine: CHHapticEngine) {
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine.makePlayer(with: pattern)
            try player.start(atTime: 0)
        } catch {
            // 失敗時は黙って無視（フィードバックは付加価値なので落とさない）。
        }
    }

    // MARK: - サウンド（システム音で代替）

    /// カチ（回転中）。サウンドONのときだけ。
    func clickSound(enabled: Bool) {
        guard enabled else { return }
        AudioServicesPlaySystemSound(1104) // 軽いキー音
    }

    /// ジャッ（確定）。
    func lockSound(enabled: Bool) {
        guard enabled else { return }
        AudioServicesPlaySystemSound(1105)
    }
}
