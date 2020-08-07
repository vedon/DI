//
//  Binder.swift
//  DIContainer
//
//  Created by vedon on 2020/8/7.
//

import Foundation
import Swinject
import User
import Feature1
import Feature2
import Feature3

class Binder {
    func bind(_ container: Container) {
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
