//
//  AnyInitializer.swift
//  DIContainer
//
//  Created by vedon on 2020/8/7.
//

import Foundation
import Swinject

public final class AnyInitializer {
    private let resolve:(_ container: Container) -> Any
    
    public init<D>(_ function: @escaping () -> D) {
        resolve = { _ in
            return function()
        }
    }
    //fix: Ambiguous use of 'init(_:)'
    public init<D, T>(singleDependency function: @escaping (D) -> T) {
        resolve = { container in
            let d: D = container.resolve(D.self)!
            return function(d)
        }
    }

    public init<D1, D2, T>(_ function: @escaping (D1, D2) -> T) {
        resolve = { container in
            let d1: D1 = container.resolve(D1.self)!
            let d2: D2 = container.resolve(D2.self)!
            return function(d1, d2)
        }
    }
    
    public init<D1, D2, D3, T>(_ function: @escaping (D1, D2, D3) -> T) {
        resolve = { container in
            let d1: D1 = container.resolve(D1.self)!
            let d2: D2 = container.resolve(D2.self)!
            let d3: D3 = container.resolve(D3.self)!
            return function(d1, d2, d3)
        }
    }
    
    public init<D1, D2, D3, D4, T>(_ function: @escaping (D1, D2, D3, D4) -> T) {
        resolve = { container in
            let d1: D1 = container.resolve(D1.self)!
            let d2: D2 = container.resolve(D2.self)!
            let d3: D3 = container.resolve(D3.self)!
            let d4: D4 = container.resolve(D4.self)!
            return function(d1, d2, d3, d4)
        }
    }
    
    public init<D1, D2, D3, D4, D5, T>(_ function: @escaping (D1, D2, D3, D4, D5) -> T) {
        resolve = { container in
            let d1: D1 = container.resolve(D1.self)!
            let d2: D2 = container.resolve(D2.self)!
            let d3: D3 = container.resolve(D3.self)!
            let d4: D4 = container.resolve(D4.self)!
            let d5: D5 = container.resolve(D5.self)!
            return function(d1, d2, d3, d4, d5)
        }
    }
    
    public func resolve<T>(by container: Container) -> T {
        guard let o = resolve(container) as? T else {
            fatalError()
        }
        return o
    }
}
