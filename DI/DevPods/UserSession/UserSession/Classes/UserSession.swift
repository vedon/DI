//
//  UserSession.swift
//  UserSession
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import User

public class UserSession {
    public init() {}
}

extension UserSession: User {
    public var isLogin: Bool { true }
    
    public func login() {
        print("User login")
    }
}
