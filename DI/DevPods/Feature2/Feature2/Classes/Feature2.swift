//
//  Feature2.swift
//  Feature1
//
//  Created by vedon on 2020/8/8.
//

import Foundation
import Services

public class Feature2 {
    public init() {
    }
}

extension Feature2: ServiceB {
    public func doSomething() {
        print("ServiceB protocol implementation by feature2")
    }
}
