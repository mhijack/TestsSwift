//
//  TestIOSTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-02-17.
//

import XCTest
@testable import TestIOS

class TestIOSTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
////        self.measure {
////            // Put the code you want to measure the time of here.
////        }
//    }
    
    func testAddition() throws {
        let n1 = 1
        let n2 = 2
        XCTAssertEqual(TestIOS.addition(n1, n2), 3)
//        let vc = ViewController()
    }

}
