//
//  Feature2.swift
//  Feature1
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import Feature1ServiceP
import Feature3

public class Feature2 {
    private var feature1: Feature1Service?
    private let feature3: Feature3
    
    public init() {
        self.feature3 = Feature3()
        PrivateModel()
        
    }
    
    public func doSomething() {
        print("Feature2 do something")
        
//        feature1?.doSomething()

        feature1?.doSomething()
        feature3.doSomething()
    }
}
