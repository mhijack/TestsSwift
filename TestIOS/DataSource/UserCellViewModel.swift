//
//  UserCellViewModel.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import Foundation

protocol UserCellViewModelDelegate: class {
    
    func didToggleFollowUser()
    
    func didToggleLoading()
    
}

class UserCellViewModel: NSObject {
    
    weak var delegate: UserCellViewModelDelegate?
    
    var isLoading: Bool = false
    
    var user: User
    
    var avatarTappedHandler: ((String) -> ())?
    var followToggleSuccessHandler: (())
    
    init(user: User) {
        self.user = user
        super.init()
    }
    
    deinit {
        print("[UserCellViewModel] deinited")
    }
    
}
