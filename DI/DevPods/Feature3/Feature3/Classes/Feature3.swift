//
//  Feature3.swift
//  Feature3
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import UserSession

public protocol Feature1Protocol {
    
}

public class Feature3 {
    private let user: UserSession
    
    public init() {
        self.user = UserSession()
    }
    
    public func doSomething() {
        print("Feature3 do something")
        
        if user.isLogin == false {
           user.login()
        }
    }
}
