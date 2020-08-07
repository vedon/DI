//
//  ViewController.swift
//  DI
//
//  Created by vedon on 2020/6/3.
//  Copyright © 2020 vedon. All rights reserved.
//

import UIKit
import DIAppContext
import DIContainer
import Feature4

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let container = DIAppContext().container
        
        let dependencies: Feature4.Dependencies = AnyInitializer(Feature4.Dependencies.init).resolve(by: container)
        
        let feature4 = Feature4(dependencies: dependencies)
        feature4.doSomething()
        // Do any additional setup after loading the view.
    }
}

