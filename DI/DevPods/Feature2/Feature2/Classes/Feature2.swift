//
//  Feature2.swift
//  Feature1
//
//  Created by vedon on 2020/6/7.
//

import Foundation
import FeatureService

public class Feature2 {
    public struct Dependencies {
        let feature1: Feature1Service
        let feature3: Feature3Service
        
        public init(feature1: Feature1Service, feature3: Feature3Service) {
            self.feature1 = feature1
            self.feature3 = feature3
        }
    }
    
    private let dependencies: Feature2.Dependencies
    
    public init(dependencies: Feature2.Dependencies) {
        self.dependencies = dependencies
    }
    
    public func doSomething() {
        print("Feature2 do something")
        
        dependencies.feature1.doSomething()
        
        dependencies.feature3.doSomething()
    }
}
