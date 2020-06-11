//
//  Operand.swift
//  Reverse Polish Notation Calculator
//
//  Created by Hassall, Oscar (HWTA) on 11/06/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Operand {
    
    var array: [String] = ["+"]
    
    func add(input: String) {
        array.append(input)
    }
    
    func flipSign(input: String) {
        array[0] = input
    }
    
    func clear() {
        array = ["+"]
    }
    
}
