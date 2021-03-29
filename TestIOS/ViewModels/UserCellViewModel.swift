//
//  UserCellViewModel.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import Foundation

class UserCellViewModel: NSObject {
    
    var user: User
    
    var avatarTappedHandler: ((String) -> ())?
    var followToggleSuccessHandler: (())
    
    init(user: User) {
        self.user = user
        super.init()
    }
    
}
