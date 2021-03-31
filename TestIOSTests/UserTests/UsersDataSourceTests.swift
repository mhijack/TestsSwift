//
//  UsersDataSourceTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import XCTest
@testable import TestIOS

class UsersDataSourceTests: XCTestCase {
    
    private var dataSource: UsersTableViewDataSource!
    
    private var jack = User(id: "0", name: "Jack")
    private var melody = User(id: "1", name: "Melody")
    
    override func setUp() {
        super.setUp()
        dataSource = UsersTableViewDataSource()
    }
    
    override func tearDown() {
        super.tearDown()
        dataSource = nil
    }
    
    func testDataSourceInitializesWithDefaultUsers() {
        let dataSource = UsersTableViewDataSource()
        XCTAssertEqual(dataSource.users.count, 2)
        XCTAssertEqual(dataSource.users[0].user.id, jack.id)
        XCTAssertEqual(dataSource.users[0].user.name, jack.name)
        XCTAssertEqual(dataSource.users[1].user.id, melody.id)
        XCTAssertEqual(dataSource.users[1].user.name, melody.name)
    }
    
    func testDataSourceInitializesWithProvidedUsers() {
        let tim = User(id: "2", name: "Tim")
        let sam = User(id: "3", name: "Sam")
        let users = [tim, sam]
        dataSource = UsersTableViewDataSource(users: users)
        XCTAssertEqual(dataSource.users[0].user.id, tim.id)
        XCTAssertEqual(dataSource.users[0].user.name, tim.name)
        XCTAssertEqual(dataSource.users[1].user.id, sam.id)
        XCTAssertEqual(dataSource.users[1].user.name, sam.name)
    }
    
}
