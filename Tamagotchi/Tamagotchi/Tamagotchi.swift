//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Hassall, Oscar (HWTA) on 22/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Tamagotchi {
    
    func firstAttributes() -> [Double] {
        //var attributes : [Double] = []
        var age = 0.0
        var health = 100.0
        var discipline = 50.0
        var numberOfPoos = 0.0
        var weight = 25.0
        var hunger = 5.0
        var attributes = [age, health, discipline, numberOfPoos, weight, hunger]
        return attributes
        
    }

    func ageUp(age: Double) -> Double{
        let ageIncreased = age+1.0
        return ageIncreased
    }
}
