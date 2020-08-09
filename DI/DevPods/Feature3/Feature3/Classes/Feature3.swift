//
//  Feature3.swift
//  Feature3
//
//  Created by vedon on 2020/8/8.
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
        print("ServiceB protocol implementation by feature3")
        
        serviceB.doSomething()
    }
}
