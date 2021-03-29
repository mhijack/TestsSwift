//
//  ViewControllerDataSource.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-28.
//

import UIKit

class ViewControllerDataSource: NSObject, UITableViewDataSource {
    
    var pages: [String]
    
    init(pages: [String] = ["page1", "page2"]) {
        self.pages = pages
        super.init()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
}
