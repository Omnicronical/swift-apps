//
//  Car.swift
//  CarCustomiser
//
//  Created by Hassall, Oscar (HWTA) on 10/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

struct Car {
    var make: String
    var model: String
    var topSpeed: Int
    var acceleration: Double
    var handling: Int
    
    func displayStats() -> String {
        return """
                Make: \(make)
                Model: \(model)
                Speed: \(topSpeed)
                Acceleration (0-60 in): \(acceleration)
                Handling: \(handling)

            """
    }
}
