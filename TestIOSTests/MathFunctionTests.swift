//
//  MathFunctionTest.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-28.
//

import XCTest
@testable import TestIOS

class MathFunctionTests: XCTestCase {
    
    private var mathFunctions: MathFunctions!
    
    override func setUp() {
        mathFunctions = MathFunctions()
        super.setUp()
    }
    
    func testAdditionAddsTwoInts() throws {
        XCTAssertEqual(mathFunctions.addition(1, 2), 3)
        XCTAssertEqual(mathFunctions.addition(0, 0), 0)
    }
    
    func testSubtractionSubtractsTwoInts() {
        XCTAssertEqual(mathFunctions.subtraction(2, 1), 1)
        XCTAssertEqual(mathFunctions.subtraction(0, 0), 0)
        XCTAssertEqual(mathFunctions.subtraction(-5, -10), 5)
        XCTAssertEqual(mathFunctions.subtraction(-5, 10), -15)
    }
    
}
