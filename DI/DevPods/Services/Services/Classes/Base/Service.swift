//
//  Service.swift
//  Services
//
//  Created by vedon on 2020/8/8.
//

import Foundation

public protocol Service {
    func whoami()
}

public protocol ServiceDebugable: NSObject {
    //@objc func debugQuickLookObject() -> Any?
}

extension ServiceDebugable {
    func debugQuickLookObject() -> Any? {
        
    }
}

public extension Service {
    func whoami() {
        #if DEBUG
        print("\(String(describing: Self.self))")
        #endif
    }
}

