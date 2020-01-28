//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by Hassall, Oscar (HWTA) on 28/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Stack {
    
    var top = -1
    var stack = Array(repeating: 0, count: 10)
    var error = false
    
    
    
    func push (input: Int) {
        if top >= 11 {
            error = true
        } else {
            top += 1
            stack[top] = input
        }
      
    }

    func pop() -> Int? {
        if top <= -1 {
            error = true
            return nil
        } else {
            var number = stack[top]
            stack[top] = 0
            top -= 1
            return (number)
        }
    }
    
    
}
