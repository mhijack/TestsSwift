//
//  UserTableViewDelegate.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import UIKit

protocol UserTableViewDelegateDelegate: class {
    
    func didSelectRowAt(for tableView: UITableView, at indexPath: IndexPath)
    
}

class UserTableViewDelegate: NSObject, UITableViewDelegate {
    
    weak var delegate: UserTableViewDelegateDelegate?
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectRowAt(for: tableView, at: indexPath)
    }
    
}
