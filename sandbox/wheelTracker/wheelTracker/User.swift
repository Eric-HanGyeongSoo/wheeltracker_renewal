//
//  User.swift
//  wheelTracker
//
//  Created by 한경수 on 2021/04/08.
//

import Foundation

struct User {
    var name: String
    var age: Int
    var wheelSize: Int
    var weight: Int
    var height: Int
}

var users: [User] = [
    User(name: "여충관", age: 28, wheelSize: 14, weight: 70, height: 177),
    User(name: "김기현", age: 23, wheelSize: 16, weight: 50, height: 165),
    User(name: "김동성", age: 24, wheelSize: 12, weight: 60, height: 170),
]
