//
//  DebouncerTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-30.
//

import XCTest

class DebouncerTests: XCTestCase {
    
    func testPreviousClosureCancelled() {
        let debouncer = Debouncer(delay: 0.25)
        
        // Expectation for the closure we'e expecting to be cancelled
        let cancelExpectation = expectation(description: "Cancel")
        cancelExpectation.isInverted = true
        
        // Expectation for the closure we're expecting to be completed
        let completedExpectation = expectation(description: "Completed")
        
        debouncer.schedule {
            cancelExpectation.fulfill()
        }
        
        // When we schedule a new closure, the previous one should be cancelled
        debouncer.schedule {
            completedExpectation.fulfill()
        }
        
        // We add an extra 0.05 seconds to reduce the risk for flakiness
        waitForExpectations(timeout: 0.3, handler: nil)
    }
    
}
