//
//  UserDataSource.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import UIKit

class UsersTableViewDataSource: NSObject, UITableViewDataSource {
    
    var users: [UserCellViewModel] = []
    private let reuseIdentifier: String
    private let cellConfigurator: UsersTableViewCellConfigurator
    
    /*
     Feed data source different cell configurator to configure cell with different UI.
     Otherwise, whenever we display lists of users, we can reuse this same user data source.
     */
    init(users: [User] = [User(id: "0", name: "Jack"),
                          User(id: "1", name: "Melody")],
         cellConfigurator: UsersTableViewCellConfigurator = UsersTableViewCellConfigurator()) {
        self.reuseIdentifier = "userCell"
        self.cellConfigurator = cellConfigurator
        super.init()
        
        self.users = users.map({ (user) -> UserCellViewModel in
            let viewModel = UserCellViewModel(user: user)
            /// Custom actions or handlers can be configured here
            viewModel.avatarTappedHandler = { [weak self] (name: String) in
                print("\(name) is tapped")
            }
            return viewModel
        })
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? UserTableViewCell else {
            assertionFailure("UserTableViewCell deque error")
            return UserTableViewCell()
        }
        cellConfigurator.configure(cell: cell, forDisplaying: users[indexPath.row])
        return cell
    }
    
}
