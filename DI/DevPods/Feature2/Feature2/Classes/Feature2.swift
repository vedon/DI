//
//  Feature2.swift
//  Feature1
//
//  Created by vedon on 2020/6/7.
//

import Foundation
//import Feature1
//import Feature3
import DICoordinator

public class Feature2 {
    private let feature1: Feature1Service
    private let feature3: Feature3Service
    
    public init(feature1: Feature1Service, feature3: Feature3Service) {
        self.feature1 = feature1
        self.feature3 = feature3
    }
    
    public func doSomething() {
        print("Feature2 do something")
        
        feature1.doSomething()
        
        feature3.doSomething()
    }
}
