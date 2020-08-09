//
//  Binder.swift
//  DIContainer
//
//  Created by vedon on 2020/8/8.
//

import Foundation
import Swinject
import Feature1
import Feature2
import Feature3
import Feature4

import Services

class Binder {
    func bind(_ container: Container) {
        container.register(ServiceA.self) { (_) -> ServiceA in
            return Feature1()
        }

        container.register(ServiceB.self) { (_) -> ServiceB in
            return Feature2()
        }
        
        container.register(ServiceC.self) { (resolver) -> ServiceC in
            let dependencies: Feature3.Dependencies = AnyInitializer(Feature3.Dependencies.init).resolve(by: container)
            
            return Feature3(dependencies: dependencies)
        }
    }
}

