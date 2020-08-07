//
//  DIAppDelegate.swift
//  Launcher
//
//  Created by vedon on 2020/8/7.
//

import UIKit
import DIContainer

@UIApplicationMain

open class DIAppDelegate: UIResponder, UIApplicationDelegate {
    open var appContext: AppContext!

    open func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.appContext = AppContext()
        return true
    }
}

public class AppContext {
    public let container: DIContainer
    
    init() {
        self.container = DIContainer.init()
    }
}
