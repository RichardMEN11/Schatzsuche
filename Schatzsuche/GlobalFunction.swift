//
//  GlobalFunction.swift
//  Schatzsuche
//
//  Created by Richard Menning on 11.08.18.
//  Copyright © 2018 Richard Menning. All rights reserved.
//

import Foundation


func degreesMinutes(_ x: Double) -> String{
    let remainder = x.truncatingRemainder(dividingBy: 1)
    let minutes = abs(remainder * 60)
    return String(format: "%d° %.2f '", Int(x), minutes)
}
