//
//  AppContext.swift
//  DIAppContext
//
//  Created by vedon on 2020/8/8.
//

import Foundation
import DIContainer

public class AppContext {
    public let container: DIContainer
    
    public init() {
        self.container = DIContainer.init()
    }
}
