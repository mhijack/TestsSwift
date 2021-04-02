//
//  SinglePlayerBowlingGame.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-31.
//

import Foundation

class SinglePlayerBowlingGame {
    
    private var allThrows: [Int] = Array.init(repeating: 0, count: 21)
    private var nextThrowIndex: Int = 0
    
    func score() -> Int {
        var score: Int = 0
        var frameIndex: Int = 0
        for _ in 0..<10 {
            if isStrike(at: frameIndex) {
                score += 10 + allThrows[frameIndex + 1] + allThrows[frameIndex + 2]
                frameIndex += 1
            } else if isSpare(at: frameIndex) {
                score += 10 + allThrows[frameIndex + 2]
                frameIndex += 2
            } else {
                score += allThrows[frameIndex] + allThrows[frameIndex + 1]
                frameIndex += 2
            }
        }
        return score
    }
    
    func roll(_ pins: Int) {
        allThrows[nextThrowIndex] = pins
        nextThrowIndex += 1
    }
    
}

extension SinglePlayerBowlingGame {
    
    /// Returns if current frame in the game constitutes a spare
    /// - Parameter frameIndex:
    /// - Returns:
    private func isSpare(at frame: Int) -> Bool {
        return allThrows[frame] + allThrows[frame + 1] == 10
    }
    
    private func isStrike(at frame: Int) -> Bool {
        return allThrows[frame] == 10
    }
}
