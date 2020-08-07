//
//  User.swift
//  User
//
//  Created by vedon on 2020/6/9.
//

import Foundation

public protocol User {
    var isLogin: Bool { get }
    func login();
}
