//
//  BowlingPlayer.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-30.
//

import Foundation

class BowlingPlayer {
    
    private var name: String
    private var currentRound: Int
    private var currentScore: Int
    
    init(name: String = "") {
        self.name = name
        self.currentRound = 0
        self.currentScore = 0
    }
    
    func getName() -> String {
        return name
    }
    
    func getCurrentScore() -> Int {
        return currentScore
    }
    
    func getCurrentRound() -> Int {
        return currentRound
    }
    
    ///
    /// - Parameter score: score for this round
    /// - Returns: returns new score
    func play(score: Int) {
        guard score >= 0 else {
            return
        }
        currentRound += 1
        currentScore += score
    }
    
    deinit {
        print("[BowlingPlayer] deinited")
    }
    
}

extension BowlingPlayer: Equatable {
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return
    }
    
}
