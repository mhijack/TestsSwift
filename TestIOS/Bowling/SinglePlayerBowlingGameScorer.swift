//
//  SinglePlayerBowlingGameScorer.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-04-03.
//

import Foundation

class SinglePlayerBowlingGameScorer {
    
    private var nextThrowIndex: Int = 0
    private var allThrows: [Int] = Array.init(repeating: 0, count: 21)
    
    public func scoreForFrame(frameIndex: Int = 10) -> Int {
        var score: Int = 0
        var currentFrameIndex: Int = 0
        for _ in 0..<frameIndex {
            if isStrike(at: currentFrameIndex) {
                score += 10 + nextTwoThrows(for: currentFrameIndex)
                currentFrameIndex += 1
            } else if isSpare(at: currentFrameIndex) {
                score += 10 + firstThrowInNextFrameOfCurrent(frame: currentFrameIndex)
                currentFrameIndex += 2
            } else {
                score += allThrows[currentFrameIndex] + allThrows[currentFrameIndex + 1]
                currentFrameIndex += 2
            }
        }
        return score
    }
    
    public func addThrow(_ pins: Int) {
        allThrows[nextThrowIndex] = pins
        nextThrowIndex += 1
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
    
    private func firstThrowInNextFrameOfCurrent(frame currentFrameIndex: Int) -> Int {
        return allThrows[currentFrameIndex + 2]
    }
    
}
