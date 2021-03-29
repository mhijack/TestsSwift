//
//  TestIOSTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-02-17.
//

import XCTest
@testable import TestIOS

class TestIOSTests: XCTestCase {

    override class func setUp() {
        super.setUp()
    }
    
    func testJustTrue() {
        XCTAssertTrue(true)
    }
    
    func testAddition() throws {
        let n1 = 1
        let n2 = 2
        XCTAssertEqual(TestIOS.addition(n1, n2), 3)
    }

}
