//
//  DIAppContext.swift
//  DIAppContext
//
//  Created by vedon on 2020/8/7.
//

import Foundation
import DIContainer
import FeatureService
import UserSession

public class DIAppContext {
    public let container: DIContainer
    
    public init() {
        self.container = DIContainer.init()
    }
    
//    public func resolve<T>(_ dependencies: T) -> T {
//        let dependencies: Feature2.Dependencies = AnyInitializer(Feature2.Dependencies.init).resolve(by: context.container)
//    }
}
