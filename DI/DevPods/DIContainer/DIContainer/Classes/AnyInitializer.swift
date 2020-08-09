//
//  AnyInitializer.swift
//  DIresolver
//
//  Created by vedon on 2020/8/8.
//

import Foundation

public protocol Resolver {
    func resolve<Service>(_ serviceType: Service.Type) -> Service?
}

public final class AnyInitializer {
    private let resolve:(_ resolver: Resolver) -> Any
    
    public init<D>(_ function: @escaping () -> D) {
        resolve = { _ in
            return function()
        }
    }
    
    //fix: Ambiguous use of 'init(_:)'
    public init<D, T>(singleDependency function: @escaping (D) -> T) {
        resolve = { resolver in
            let d: D = resolver.resolve(D.self)!
            return function(d)
        }
    }

    public init<D1, D2, T>(_ function: @escaping (D1, D2) -> T) {
        resolve = { resolver in
            let d1: D1 = resolver.resolve(D1.self)!
            let d2: D2 = resolver.resolve(D2.self)!
            return function(d1, d2)
        }
    }
    
    public init<D1, D2, D3, T>(_ function: @escaping (D1, D2, D3) -> T) {
        resolve = { resolver in
            let d1: D1 = resolver.resolve(D1.self)!
            let d2: D2 = resolver.resolve(D2.self)!
            let d3: D3 = resolver.resolve(D3.self)!
            return function(d1, d2, d3)
        }
    }
    
    public init<D1, D2, D3, D4, T>(_ function: @escaping (D1, D2, D3, D4) -> T) {
        resolve = { resolver in
            let d1: D1 = resolver.resolve(D1.self)!
            let d2: D2 = resolver.resolve(D2.self)!
            let d3: D3 = resolver.resolve(D3.self)!
            let d4: D4 = resolver.resolve(D4.self)!
            return function(d1, d2, d3, d4)
        }
    }
    
    public init<D1, D2, D3, D4, D5, T>(_ function: @escaping (D1, D2, D3, D4, D5) -> T) {
        resolve = { resolver in
            let d1: D1 = resolver.resolve(D1.self)!
            let d2: D2 = resolver.resolve(D2.self)!
            let d3: D3 = resolver.resolve(D3.self)!
            let d4: D4 = resolver.resolve(D4.self)!
            let d5: D5 = resolver.resolve(D5.self)!
            return function(d1, d2, d3, d4, d5)
        }
    }
    
    public func resolve<T>(by resolver: Resolver) -> T {
        guard let o = resolve(resolver) as? T else { fatalError() }
        return o
    }
}
