//
//  User.swift
//  User
//
//  Created by vedon on 2020/6/9.
//

import Foundation
import Services

public class Feature4 {
    public struct Dependencies {
        let serviceA: ServiceA
        let serviceC: ServiceC
        
        public init(serviceA: ServiceA, serviceC: ServiceC) {
            self.serviceA = serviceA
            self.serviceC = serviceC
        }
    }
    
    private let dependencies: Feature4.Dependencies
    
    public init(dependencies: Feature4.Dependencies) {
        self.dependencies = dependencies
    }
    
    public func doSomething() {
        print("Feature2 do something")
        dependencies.serviceA.doSomething()
        dependencies.serviceC.doSomething()
    }
}
