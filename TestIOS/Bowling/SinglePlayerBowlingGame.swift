//
//  SinglePlayerBowlingGame.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-31.
//

import Foundation

class SinglePlayerBowlingGame {
    
    private var firstThrowInframe: Bool = true
    
    private var scorer: SinglePlayerBowlingGameScorer = SinglePlayerBowlingGameScorer()
    
    func score() -> Int {
        return scorer.scoreForFrame()
    }
    
    func roll(_ pins: Int) {
        scorer.addThrow(pins)
    }
    
}
