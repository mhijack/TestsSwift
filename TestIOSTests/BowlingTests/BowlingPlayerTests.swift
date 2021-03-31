//
//  BowlingPlayerTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-30.
//

import XCTest
@testable import TestIOS

class BowlingPlayerTests: XCTestCase {
    
    private var player: BowlingPlayer!
    
    override func setUp() {
        super.setUp()
        player = BowlingPlayer()
    }
    
    override func tearDown() {
        player = nil
    }
    
    func testPlayerInitializesWithZeroScoreAndName() {
        let jackPlayer = BowlingPlayer(name: "Jack")
        XCTAssertEqual(jackPlayer.getName(), "Jack")
        XCTAssertEqual(jackPlayer.getCurrentScore(), 0)
    }
    
    func testPlayerInitializesWithDefaultEmptyName() {
        XCTAssertEqual(player.getName(), "")
    }
    
    func testPlayerStartsAtRoundZero() {
        XCTAssertEqual(player.getCurrentRound(), 0)
    }
    
    func testPlayerCompleteARoundIncrementsRoundNumber() {
        XCTAssertEqual(player.getCurrentRound(), 0)
        player.play(score: 0)
        XCTAssertEqual(player.getCurrentRound(), 1)
        player.play(score: 0)
        XCTAssertEqual(player.getCurrentRound(), 2)
    }
    
    func testPlayerIgnoresNegativeScoreAndDoNotAddScore() {
        player.play(score: -1)
        XCTAssertEqual(player.getCurrentScore(), 0)
    }
    
    func testPlayerIgnoresNegativeScoreAndDoNotIncrementRound() {
        player.play(score: -1)
        XCTAssertEqual(player.getCurrentRound(), 0)
    }
    
    func testPlayerCompleteARoundWithAScoreIncrementsProvidedScore() {
        player.play(score: 0)
        XCTAssertEqual(player.getCurrentScore(), 0)
        
        player.play(score: 2)
        XCTAssertEqual(player.getCurrentScore(), 2)
        
        player.play(score: 4)
        XCTAssertEqual(player.getCurrentScore(), 6)
    }
    
}
