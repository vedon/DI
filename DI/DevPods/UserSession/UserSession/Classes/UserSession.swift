//
//  UserSession.swift
//  UserSession
//
//  Created by vedon on 2020/6/7.
//

import Foundation

public protocol UserSessionProtocol {
    
}

public class UserSession {
    public init() {}
    
    public var isLogin: Bool { true }
    
    public func login() {
        print("User login")
    }
}
