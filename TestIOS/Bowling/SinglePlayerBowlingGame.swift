//
//  SinglePlayerBowlingGame.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-31.
//

import Foundation

class GameError: Error {
    
}

class SinglePlayerBowlingGame {
    
    private var currentFrame: Int = 0
    private var ball: Int = 0
    private var firstThrowInFrame: Bool = true
    
    private var scorer: SinglePlayerBowlingGameScorer = SinglePlayerBowlingGameScorer()
    
    func score() -> Int {
        return scorer.scoreForFrame(frameIndex: currentFrame)
    }
    
    /*
     0  1  2  3  4  5  6  7  8  9               10
     2  2  2  2  2  2  2  2  2  2               3 throws
     */
    func roll(_ pins: Int) {
        scorer.addThrow(pins, at: ball)
        ball += 1
        adjustFrame(pins: pins)
    }
    
    enum SingleGameError: Error {
        case invalidSelection
        case insufficientFunds(coinsNeeded: Int)
        case outOfStock
    }
    
    public func throwException() throws {
        throw SingleGameError.invalidSelection
    }
    
    public func throwInsufficientFunds() throws {
        throw SingleGameError.insufficientFunds(coinsNeeded: 10)
    }
    
}

extension SinglePlayerBowlingGame {
    
    private func adjustFrame(pins: Int) {
        if pins == 10 {
            advanceFrame()
        } else {
            switch firstThrowInFrame {
            case true:
                /// First throw and not a strike,
                firstThrowInFrame = false
            case false:
                /// Second throw, firstThrowInFrame = true and advance frame
                firstThrowInFrame = true
                advanceFrame()
            }
        }
    }
    
    private func advanceFrame() {
        currentFrame = min(10, currentFrame + 1)
    }
    
}
