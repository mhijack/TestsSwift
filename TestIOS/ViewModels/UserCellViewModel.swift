//
//  UserCellViewModel.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import Foundation

class UserCellViewModel: NSObject {
    
    var user: User
    
    init(user: User) {
        self.user = user
        super.init()
    }
    
}
