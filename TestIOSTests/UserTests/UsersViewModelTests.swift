//
//  UsersViewModelTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import XCTest
@testable import TestIOS

class UsersViewModelTests: XCTestCase {
    
    func testRandomUnsplashImageHasValue() {
        let exp = expectation(description: "Download unsplash image")
        let url = URL(string: "https://images.unsplash.com/photo-1593642531955-b62e17bdaa9c?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            XCTAssertNotNil(data)
            exp.fulfill()
        }
        dataTask.resume()
        wait(for: [exp], timeout: 10.0)
    }
    
}
