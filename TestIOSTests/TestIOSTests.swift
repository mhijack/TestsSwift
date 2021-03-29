//
//  TestIOSTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-02-17.
//

import XCTest
@testable import TestIOS

class TestIOSTests: XCTestCase {
    
    override class func setUp() { // 1.
        // This is the setUp() class method.
        // It is called before the first test method begins.
        // Set up any overall initial state here.
    }
    
    override func setUpWithError() throws { // 2.
        // This is the setUpWithError() instance method.
        // It is called before each test method begins.
        // Set up any per-test state here.
    }
    
    override func setUp() { // 3.
        // This is the setUp() instance method.
        // It is called before each test method begins.
        // Use setUpWithError() to set up any per-test state,
        // unless you have legacy tests using setUp().
    }
    
    func testMethod1() throws { // 4.
        // This is the first test method.
        // Your testing code goes here.
        addTeardownBlock { // 5.
            // Called when testMethod1() ends.
        }
    }
    
    func testMethod2() throws { // 6.
        // This is the second test method.
        // Your testing code goes here.
        addTeardownBlock { // 7.
            // Called when testMethod2() ends.
        }
        addTeardownBlock { // 8.
            // Called when testMethod2() ends.
        }
    }
    
    override func tearDown() { // 9.
        // This is the tearDown() instance method.
        // It is called after each test method completes.
        // Use tearDownWithError() for any per-test cleanup,
        // unless you have legacy tests using tearDown().
    }
    
    override func tearDownWithError() throws { // 10.
        // This is the tearDownWithError() instance method.
        // It is called after each test method completes.
        // Perform any per-test cleanup here.
    }
    
    override class func tearDown() { // 11.
        // This is the tearDown() class method.
        // It is called after all test methods complete.
        // Perform any overall cleanup here.
    }
    
    func testJustTrue() {
        XCTAssertTrue(true)
    }
    
}
