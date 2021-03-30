//
//  User.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-28.
//

import Foundation

struct User: Codable {
    
    let id: String
    var name: String
    var avatar: URL
    var hasFollowed: Bool = false
    
    init(id: String = "",
         name: String = "",
         avatar: URL = URL(string: "https://images.unsplash.com/photo-1593642634367-d91a135587b5?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")!) {
        self.id = id
        self.name = name
        self.avatar = avatar
    }
    
}

extension User: Equatable {
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
    
}
