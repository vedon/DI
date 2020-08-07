//
//  Feature3.swift
//  Feature3
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import Services

public class Feature3 {
    private let serviceB: ServiceB
    
    public init(_ serviceB: ServiceB) {
        self.serviceB = serviceB
    }
}

extension Feature3: ServiceC {
    public func doSomething() {
        print("Feature3 do something")
        
        if serviceB.isLogin == false {
           serviceB.login()
        }
    }
}
