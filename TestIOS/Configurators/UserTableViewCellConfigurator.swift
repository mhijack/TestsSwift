//
//  UserTableViewCellConfigurator.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import UIKit
import Stevia
import SDWebImage

class UserTableViewCellConfigurator: NSObject {
    
//    private let userManager: UserManager
//
//    init(userManager: UserManager) {
//        self.userManager = userManager
//    }
    
    public func configure(cell: UserTableViewCell, forDisplaying user: UserCellViewModel) {
        cell.avatar.sd_setImage(with: user.user.avatar, completed: nil)
        cell.nameLabel.text = user.user.name
        
        cell.avatarTapClosure = { [weak self] in
            guard let self = self else { return }
            user.avatarTappedHandler(user.user.name)
        }
    }
    
}
