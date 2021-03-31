//
//  BowlingTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-30.
//

import XCTest
@testable import TestIOS

class BowlingGameTests: XCTestCase {

    func testBowlingGameStartsWithNoPlayers() {
        let game = BowlingGame()
        XCTAssertEqual(game.getNumberOfPlayers(), 0)
    }
    
    func testCanAddPlayersToGame() {
        let game = BowlingGame()
        let playerJack = BowlingPlayer(name: "Jack")
        let playerMelody = BowlingPlayer(name: "Melody")
        game.addPlayer(player: playerJack)
        XCTAssertEqual(game.getNumberOfPlayers(), 1)
        game.addPlayer(player: playerMelody)
        XCTAssertEqual(game.getNumberOfPlayers(), 2)
    }
    
    func testGameReturnsPlayersAdded() {
        let game = BowlingGame()
        let playerJack = BowlingPlayer(name: "Jack")
        let playerMelody = BowlingPlayer(name: "Melody")
        game.addPlayer(player: playerJack)
        game.addPlayer(player: playerMelody)
        XCTAssertEqual(game.getPlayers(), [playerJack, playerMelody])
    }
    
    func testPlayersAreAddedInOrder() {
        let game = BowlingGame()
        let playerJack = BowlingPlayer(name: "Jack")
        let playerMelody = BowlingPlayer(name: "Melody")
        game.addPlayer(player: playerJack)
        XCTAssertEqual(game.getPlayers()[0].getName(), "Jack")
        game.addPlayer(player: playerMelody)
        XCTAssertEqual(game.getPlayers()[1].getName(), "Melody")
    }
    
}
