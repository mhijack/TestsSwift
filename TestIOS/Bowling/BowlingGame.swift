//
//  BowlingGame.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-30.
//

import Foundation

class BowlingGame {
    
    private var players: [BowlingPlayer]
    
    init() {
        self.players = []
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
    
}
