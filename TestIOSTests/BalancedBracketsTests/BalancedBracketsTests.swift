//
//  BalancedBracketsTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-04-03.
//

import XCTest
@testable import TestIOS

class BalancedBracketsTests: XCTestCase {
    
    private var brackets: BalancedBrackets!
    
    override func setUp() {
        super.setUp()
        brackets = BalancedBrackets()
    }
    
    override func tearDown() {
        super.tearDown()
        brackets = nil
    }
    
    func testBrackets() {
        XCTAssertNotNil(brackets)
    }
    
    func testBracketsReturnsTrueForEmptyString() {
        XCTAssertTrue(brackets.isBalanced(string: ""))
    }
    
    func testBracketsReturnsTrueForStringWithoutBrackets() {
        XCTAssertTrue(brackets.isBalanced(string: "this is just test"))
    }
    
    func testBracketsReturnsFalseForStringWithOneOpenBracket() {
        XCTAssertFalse(brackets.isBalanced(string: "("))
    }
    
    func testBracketsReturnTrueForStringWithSimpleOpenClosedBracket() {
        XCTAssertTrue(brackets.isBalanced(string: "()"))
    }
    
    func testOneMixedOpenBrackets() {
        XCTAssertFalse(brackets.isBalanced(string: "(123123("))
    }
    
    func testTwoOpeningBrackets() {
        XCTAssertFalse(brackets.isBalanced(string: "(("))
    }
    
    func testMissingOpeningBrackets() {
        XCTAssertFalse(brackets.isBalanced(string: ")"))
    }
    
    func testTwoClosingBrackets() {
        XCTAssertFalse(brackets.isBalanced(string: "))"))
    }
    
    func testMixedBalanced() {
        XCTAssertTrue(brackets.isBalanced(string: "[][]()"))
    }
    
    func testMixedUnbalanced() {
        XCTAssertFalse(brackets.isBalanced(string: "(({()})"))
        XCTAssertFalse(brackets.isBalanced(string: "(({([])})"))
    }

}
