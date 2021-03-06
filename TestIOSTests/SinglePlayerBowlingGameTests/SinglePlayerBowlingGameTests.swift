//
//  SinglePlayerBowlingGameTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-31.
//

import XCTest
@testable import TestIOS

/*
 Write a class named “Game” that has two methods
 roll(pins : int) is called each time the player rolls a ball.  The argument is the number of pins knocked down.
 score() : int is called only at the very end of the game.  It returns the total score for that game.
 */
class SinglePlayerBowlingGameTests: XCTestCase {
    
    private var game: SinglePlayerBowlingGame!
    
    override func setUp() {
        super.setUp()
        game = SinglePlayerBowlingGame()
    }
    
    override func tearDown() {
        super.tearDown()
        game = nil
    }
    
    func testGameStartsWithZeroScore() {
        XCTAssertEqual(game.score(), 0)
    }
    
    func testAllBadThrows() {
        rollMany(rolls: 21, pins: 0)
        XCTAssertEqual(game.score(), 0)
    }
    
    func testTwoNormalRoll() {
        game.roll(4)
        game.roll(5)
        rollMany(rolls: 19, pins: 0)
        XCTAssertEqual(game.score(), 9)
    }
    
    func testOneSpare() {
        game.roll(5)
        game.roll(5) // Spare
        game.roll(3)
        rollMany(rolls: 18, pins: 0)
        XCTAssertEqual(game.score(), 16)
    }
    
    func testTwoAdjacentSpare() {
        game.roll(5)
        game.roll(5)
        game.roll(2)
        game.roll(8)
        game.roll(3)
        rollMany(rolls: 16, pins: 0)
        XCTAssertEqual(game.score(), 28)
    }
    
    func testTwoSpacedOutSpare() {
        game.roll(5)
        game.roll(5)
        game.roll(3)
        game.roll(3)
        game.roll(5)
        game.roll(5)
        game.roll(3)
        rollMany(rolls: 14, pins: 0)
        XCTAssertEqual(game.score(), 35)
    }
    
    func testOneStrike() {
        game.roll(10)
        game.roll(3)
        game.roll(5)
        rollMany(rolls: 18, pins: 0)
        XCTAssertEqual(game.score(), 26)
    }
    
    func testTwoAdjacentStrikes() {
        game.roll(10)
        game.roll(10)
        game.roll(3)
        game.roll(5)
        rollMany(rolls: 0, pins: 17)
        XCTAssertEqual(game.score(), 49)
    }
    
    func testTwoSpacedStrikes() {
        game.roll(10)
        game.roll(3)
        game.roll(5)
        game.roll(10)
        game.roll(4)
        game.roll(4)
        rollMany(rolls: 15, pins: 0)
        XCTAssertEqual(game.score(), 52)
    }
    
    func testPerfectGame() {
        for _ in 0..<12 {
            game.roll(10)
        }
        XCTAssertEqual(game.score(), 300)
    }
    
    func testHeartBreak() {
        for _ in 0..<11 {
            game.roll(10)
        }
        game.roll(9)
        XCTAssertEqual(game.score(), 299)
    }
    
    func testTenthFrameSpare() {
        for _ in 0..<9 {
            game.roll(10)
        }
        game.roll(9)
        game.roll(1)
        game.roll(1)
        XCTAssertEqual(game.score(), 270)
    }
    
    func testEndOfArray() {
        for _ in 0..<9 {
            game.roll(0)
        }
        game.roll(2)
        game.roll(8)
        game.roll(10)
        XCTAssertEqual(game.score(), 20)
    }
    
    func testThrowException() {
        XCTAssertNoThrow(try game.throwException())
    }
    
    func testThrowInsufficientFunds() {
        do {
            try game.throwInsufficientFunds()
        } catch SinglePlayerBowlingGame.SingleGameError.invalidSelection {
            
        } catch SinglePlayerBowlingGame.SingleGameError.insufficientFunds(let coinsNeeded) {
            print(coinsNeeded)
        } catch SinglePlayerBowlingGame.SingleGameError.outOfStock {
            
        } catch {
            
        }
    }
    
}

extension SinglePlayerBowlingGameTests {
    
    private func rollMany(rolls: Int, pins: Int) {
        for _ in 0..<rolls {
            game.roll(pins)
        }
    }
}
