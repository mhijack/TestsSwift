//
//  UserManager.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-29.
//

import Foundation

class UserManager: NSObject {
    
    public func addUserAsFriend(isFriend: Bool, completion: @escaping (Bool) -> ()) {
        print("we are now friends")
        
        
        completion(!isFriend)
    }
    
}
