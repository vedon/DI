//
//  Feature3.swift
//  Feature3
//
//  Created by vedon on 2020/8/8.
//

import Foundation
import Services

public class Feature3 {
    public struct Dependencies {
       let serviceA: ServiceA
       let serviceB: ServiceB
       
       public init(serviceA: ServiceA, serviceB: ServiceB) {
           self.serviceA = serviceA
           self.serviceB = serviceB
       }
    }

    private let dependencies: Feature3.Dependencies
    public init(dependencies: Feature3.Dependencies) {
       self.dependencies = dependencies
    }
}

extension Feature3: ServiceC {
    public func doSomething() {
        print("ServiceC protocol implementation by feature3")
        
        print("ServiceC calls ServceA and ServiceB via dependency injection")
        dependencies.serviceA.doSomething()
        dependencies.serviceB.doSomething()
    }
}
