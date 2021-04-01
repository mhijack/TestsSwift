//
//  BowlingGame.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-30.
//

import Foundation

class BowlingGame {
    
    private var players: [BowlingPlayer]
    
    private var isGameStarted: Bool
    
    init() {
        self.players = []
        self.isGameStarted = false
    }
    
    func getNumberOfPlayers() -> Int {
        return players.count
    }
    
    func addPlayer(player: BowlingPlayer) {
        players.append(player)
    }
    
    func getPlayers() -> [BowlingPlayer] {
        return players
    }
    
    func startGame() {
        guard getNumberOfPlayers() > 0 else {
            return
        }
        isGameStarted = true
    }
    
    func getIsGameStarted() -> Bool {
        return isGameStarted
    }
    
    func getCurrentPlayer() -> BowlingPlayer? {
        switch isGameStarted {
        case true:
            return getPlayers()[0]
        case false:
            return nil
        }
    }
    
}
