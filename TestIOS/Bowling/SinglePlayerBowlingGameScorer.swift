//
//  SinglePlayerBowlingGameScorer.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-04-03.
//

import Foundation

class SinglePlayerBowlingGameScorer {
    
    private var allThrows: [Int] = Array.init(repeating: 0, count: 21)
    private var ball: Int = 0
    
    public func scoreForFrame(frameIndex: Int = 10) -> Int {
        var score: Int = 0
        ball = 0
        
        for _ in 0..<frameIndex {
            if isStrike(at: ball) {
                score += 10 + nextTwoThrows(for: ball)
                ball += 1
            } else if isSpare(at: ball) {
                score += 10 + nextThrow(frame: ball)
                ball += 2
            } else {
                score += twoThrowsIn(frame: ball)
                ball += 2
            }
        }
        return score
    }
    
    public func addThrow(_ pins: Int, at ball: Int) {
        allThrows[ball] = pins
    }
    
}

extension SinglePlayerBowlingGameScorer {
    
    /// Returns if current frame in the game constitutes a spare
    /// - Parameter frameIndex:
    /// - Returns:
    private func isSpare(at frame: Int) -> Bool {
        return allThrows[frame] + allThrows[frame + 1] == 10
    }
    
    private func isStrike(at frame: Int) -> Bool {
        return allThrows[frame] == 10
    }
    
    private func nextTwoThrows(for currentFrameIndex: Int) -> Int {
        return allThrows[currentFrameIndex + 1] + allThrows[currentFrameIndex + 2]
    }
    
    private func nextThrow(frame currentFrameIndex: Int) -> Int {
        return allThrows[currentFrameIndex + 2]
    }
    
    private func twoThrowsIn(frame currentFrameIndex: Int) -> Int {
        return allThrows[currentFrameIndex] + allThrows[currentFrameIndex + 1]
    }
    
}
