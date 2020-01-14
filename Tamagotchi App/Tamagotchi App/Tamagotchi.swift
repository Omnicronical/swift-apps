//
//  statistics.swift
//  Tamagotchi App
//
//  Created by Hassall, Oscar (HWTA) on 14/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

struct Tamagotchi {
    var name: String
    var age: Int
    var health: Int
    var hunger: Int
    var discipline: Int
    var weight: Int
    var death: Bool
    var numberOfPoos: Int
    
    
    func displayStats() -> String {
        
        return """
                Health: \(health)
                Hunger: \(hunger)
                Discipline: \(discipline)

            """
    }
    
}
