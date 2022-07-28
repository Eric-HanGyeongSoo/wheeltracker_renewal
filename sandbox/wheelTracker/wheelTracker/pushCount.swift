//
//  Steps.swift
//  wheelTracker
//
//  Created by gaeun on 2021/04/15.
//

import Foundation

struct PushCount {
    var userId : Int
    var date : Date
    var counts : Int
    var steps : Int{
        return counts
    }//이거 계산으로
    var distance : Float
}

var pushCount: [PushCount] = [
    
]
