//
//  ViewControllerViewModel.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-28.
//

import Foundation

class ViewControllerViewModel: NSObject {
    
    public var dataSource: ViewControllerDataSource
    public var tableViewDelegate: ViewControllerTableViewDelegate
    
    init(with dataSource: ViewControllerDataSource, with tableViewDelegate: ViewControllerTableViewDelegate) {
        self.dataSource = dataSource
        self.tableViewDelegate = tableViewDelegate
        super.init()
    }
    
    
    
}
