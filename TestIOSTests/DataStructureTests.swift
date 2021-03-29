//
//  DataStructureTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-28.
//

import XCTest
@testable import TestIOS

class DataStructureTests: XCTestCase {
    
    func testDataStructureStartsEmpty() {
        let db = DataStructure()
        XCTAssertEqual(db.isEmpty(), true)
    }
    
}
