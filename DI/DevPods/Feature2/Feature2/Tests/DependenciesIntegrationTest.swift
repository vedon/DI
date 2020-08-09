//
//  DependenciesIntegrationTest.swift
//  Feature2-Unit-Tests
//
//  Created by vedon on 2020/8/8.
//

import XCTest
import DIAppContext
import Feature2

class DependenciesIntegrationTest: XCTestCase {
    lazy var context: DIAppContext = {
        return DIAppContext()
    }()
    
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

    func testDenpendencies() {
        let dependencies: Feature2.Dependencies = AnyInitializer(Feature2.Dependencies.init).resolve(by: context.container)

        let f2 = Feature2(dependencies: dependencies)

        f2.doSomething()
    }
}
