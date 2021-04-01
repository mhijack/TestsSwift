//
//  BowlingTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-30.
//

import XCTest
@testable import TestIOS

class BowlingGameTests: XCTestCase {
    
    private var game: BowlingGame!
    
    private var playerJack: BowlingPlayer!
    private var playerMelody: BowlingPlayer!
    
    override func setUp() {
        super.setUp()
        self.game = BowlingGame()
        playerJack = BowlingPlayer(name: "Jack")
        playerMelody = BowlingPlayer(name: "Melody")
    }
    
    override func tearDown() {
        super.tearDown()
        self.game = nil
        playerJack = nil
        playerMelody = nil
    }

    func testBowlingGameStartsWithNoPlayers() {
        XCTAssertEqual(game.getNumberOfPlayers(), 0)
    }
    
    func testCanAddPlayersToGame() {
        game.addPlayer(player: playerJack)
        XCTAssertEqual(game.getNumberOfPlayers(), 1)
        game.addPlayer(player: playerMelody)
        XCTAssertEqual(game.getNumberOfPlayers(), 2)
    }
    
    func testGameReturnsPlayersAdded() {
        game.addPlayer(player: playerJack)
        game.addPlayer(player: playerMelody)
        XCTAssertEqual(game.getPlayers(), [playerJack, playerMelody])
    }
    
    func testPlayersAreAddedInOrder() {
        game.addPlayer(player: playerJack)
        XCTAssertEqual(game.getPlayers()[0].getName(), "Jack")
        game.addPlayer(player: playerMelody)
        XCTAssertEqual(game.getPlayers()[1].getName(), "Melody")
    }
    
    func testGameOnlyStartsWithAtLeastOnePlayer() {
        /*
         game states:
         1. Haven't started
         2. started, not yet finished
         3. finished
         */
        game.startGame()
        XCTAssertFalse(game.getIsGameStarted())
        game.addPlayer(player: playerJack)
        game.startGame()
        XCTAssertTrue(game.getIsGameStarted())
    }
    
    func testGameReturnsCurrentPlayerAsNilIfGameHasntStartedAndNotNilIfStarted() {
        XCTAssertNil(game.getCurrentPlayer())
        game.addPlayer(player: playerJack)
        game.startGame()
        XCTAssertNotNil(game.getCurrentPlayer())
    }
    
    func testGameReturnsCurrentPlayer() {
//        game.addPlayer(player: playerJack)
//        XCTAssertEqual(game.getCurrentPlayer(), playerJack)
//        game.addPlayer(player: <#T##BowlingPlayer#>)
//        XCTAssertEqual(<#T##expression1: Equatable##Equatable#>, <#T##expression2: Equatable##Equatable#>)
//        game.startGame()
//        XCTAssertEqual(<#T##expression1: Equatable##Equatable#>, <#T##expression2: Equatable##Equatable#>)
    }
    
}
