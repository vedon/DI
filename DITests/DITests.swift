//
//  DITests.swift
//  DITests
//
//  Created by vedon on 2020/6/3.
//  Copyright © 2020 vedon. All rights reserved.
//

import XCTest
import DIContainer
import FeatureService
import Feature2

@testable import DI

class DITests: XCTestCase {
    var container: DIContainer {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { fatalError() }
        return appDelegate.appContext.container
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testFeature2() {
        let dependencies: Feature2.Dependencies = AnyInitializer(Feature2.Dependencies.init).resolve(by: container)
        
        let f2 = Feature2(dependencies: dependencies)
        
        f2.doSomething()
    }
}
