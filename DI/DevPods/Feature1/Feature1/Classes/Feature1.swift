//
//  Feature1.swift
//  Feature1
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import Services

public class Feature1 {
    public init() {}
}

extension Feature1: ServiceA {
    public func doSomething() {
        print("Feature1 do something")
    }
}
