//
//  ViewController.swift
//  DI
//
//  Created by vedon on 2020/8/8.
//  Copyright © 2020 vedon. All rights reserved.
//

import UIKit
import AppContext
import DIContainer
import Feature3
import Services

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let container = AppContext().container
        
        let serviceCImp = container.resolve(ServiceC.self)
        serviceCImp!.doSomething()
        // Do any additional setup after loading the view.
    }
}

