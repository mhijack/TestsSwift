//
//  UserTableViewDelegate.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import UIKit

protocol UsersTableViewDelegateDelegate: class {
    
    func didSelectRowAt(for tableView: UITableView, at indexPath: IndexPath)
    
}

class UsersTableViewDelegate: NSObject, UITableViewDelegate {
    
    weak var delegate: UsersTableViewDelegateDelegate?
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectRowAt(for: tableView, at: indexPath)
    }
    
}
