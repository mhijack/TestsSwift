//
//  UserTableViewCellConfigurator.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import UIKit
import Stevia
import SDWebImage

class UsersTableViewCellConfigurator: NSObject {
    
    public func configure(cell: UserTableViewCell, forDisplaying user: UserCellViewModel) {
        cell.avatar.sd_setImage(with: user.user.avatar, completed: nil)
        cell.nameLabel.text = user.user.name
    }
    
}
