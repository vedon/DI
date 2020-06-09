//
//  Feature3.swift
//  Feature3
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import FeatureService
import User

public class Feature3 {
    private let user: User
    
    public init(_ user: User) {
        self.user = user
    }
}

extension Feature3: Feature3Service {
    public func doSomething() {
        print("Feature3 do something")
        
        if user.isLogin == false {
           user.login()
        }
    }
}
