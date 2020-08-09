//
//  Feature1.swift
//  Feature1
//
//  Created by vedon on 2020/8/8.
//

import Foundation
import Services

public class Feature1 {
    public init() {}
}

extension Feature1: ServiceA {
    public func doSomething() {
        print("ServiceA protocol implementation by feature1")
    }
}
