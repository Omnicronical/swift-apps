//
//  InputChecker.swift
//  Reverse Polish Notation Calculator
//
//  Created by Hassall, Oscar (HWTA) on 10/06/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class InputChecker {
    
    func check(input: String) -> Bool {
        var errorText = ""
        if input != ""{
            let integerInput = Int(input)
            if integerInput! > 999{
                errorText = "INPUT MUST BE LESS THAN 1000"
                print(errorText)
                return false
            }
            else if integerInput! < -999{
                errorText = "INPUT MUST BE MORE THAN -1000"
                print(errorText)
                return false
            }
        }
        return true
    }
}
