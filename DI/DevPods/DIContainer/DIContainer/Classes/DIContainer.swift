//
//  DIContainer.swift
//  DIContainer
//
//  Created by vedon on 2020/6/9.
//

import Foundation
import Swinject

public class DIContainer {
    private let internalContainer: Container
    private let binder: Binder
    
    public init() {
        self.internalContainer = Container()
        self.binder = Binder()
        
        binder.bind(internalContainer)
    }
}

extension DIContainer: Resolver {
    public func resolve<Service>(_ serviceType: Service.Type) -> Service? {
        internalContainer.resolve(serviceType)
    }
}
