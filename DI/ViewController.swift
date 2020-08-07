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
import Feature2

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appContext = DIAppContext()
        let feature2Dependencies: Feature2.Dependencies = appContext.container.resolve(with: AnyInitializer(Feature2.Dependencies.init))
        
        
        // Do any additional setup after loading the view.
    }
}

