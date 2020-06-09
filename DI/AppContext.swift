//
//  AppContext.swift
//  DI
//
//  Created by vedon on 2020/6/8.
//  Copyright © 2020 vedon. All rights reserved.
//

import Foundation
import Feature1
import Feature3
import UserSession

import DIContainer
import FeatureService
import User

class AppContext {
    let container: DIContainer
    
    init() {
        self.container = DIContainer.init()
        assembledFeatureService()
    }
    
    private func assembledFeatureService() {
        ServiceAssembly.assembled(in: container)
    }
}


enum ServiceAssembly {
    static func assembled(in container: DIContainer) {
        container.register(Feature1Service.self) { (_) -> Feature1Service in
            return Feature1()
        }
        
        container.register(User.self) { (_) -> User in
            return UserSession()
        }
        
        container.register(Feature3Service.self) { (resolver) -> Feature3Service in
            let user = resolver.resolve(User.self)
            return Feature3(user!)
        }
    }
}
