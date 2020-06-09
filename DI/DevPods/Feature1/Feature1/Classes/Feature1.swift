//
//  Feature1.swift
//  Feature1
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import FeatureService

struct PrivateModel {
    
}

public class Feature1 {
    public init() {}
}

extension Feature1: Feature1Service {
    public func doSomething() {
        print("Feature1 do something")
    }
}
