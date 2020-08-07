//
//  Feature2.swift
//  Feature1
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import Services

public class Feature2 {
    public init() {
    }
    
    public func doSomething() {
        print("Feature2 do something")
    }
}

extension Feature2: ServiceB {
    public var isLogin: Bool {
        return true
    }
    
    public func login() {
        print("Start Login")
    }
}
