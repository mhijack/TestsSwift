//
//  ViewControllerDataSourceTests.swift
//  TestIOSTests
//
//  Created by Jianyuan Chen on 2021-03-28.
//

import XCTest
@testable import TestIOS

class ViewControllerDataSourceTests: XCTestCase {
    
    private var dataSource: ViewControllerDataSource!
    
    override func setUp() {
        super.setUp()
        dataSource = ViewControllerDataSource()
    }
    
    override func tearDown() {
        super.tearDown()
        dataSource = nil
    }
    
    func testDataSourceHasDefaultValues() {
        XCTAssertEqual(dataSource.pages.count, 2)
        XCTAssertEqual(dataSource.pages[0], "page1")
        XCTAssertEqual(dataSource.pages[1], "page2")
    }
    
    func testDataSourceReturnsNumberOfItemsBasedOnPages() {
        XCTAssertEqual(dataSource.tableView(UITableView(), numberOfRowsInSection: 0), 2)
        
        let threePages = ["page1", "page2", "page3"]
        dataSource.pages = threePages
        XCTAssertEqual(dataSource.tableView(UITableView(), numberOfRowsInSection: 0), 3)
        
        let noPages: [String] = []
        dataSource.pages = noPages
        XCTAssertEqual(dataSource.tableView(UITableView(), numberOfRowsInSection: 0), 0)
    }
    
//    func testDataSource
    
}
