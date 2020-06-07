//
//  Feature2.swift
//  Feature1
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import Feature1
import Feature3

public class Feature2 {
    private let feature1: Feature1
    private let feature3: Feature3
    
    public init() {
        self.feature1 = Feature1()
        self.feature3 = Feature3()
    }
    
    public func doSomething() {
        print("Feature2 do something")
        
        feature1.doSomething()
        
        feature3.doSomething()
    }
}
