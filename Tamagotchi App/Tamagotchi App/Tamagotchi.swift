//
//  statistics.swift
//  Tamagotchi App
//
//  Created by Hassall, Oscar (HWTA) on 14/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Tamagotchi {
    var name: String
    var age: Int
    var health: Int
    var hunger: Int
    var discipline: Int
    var weight: Int
    var death: Bool
    var numberOfPoos: Int
    
    init() {
        name = "Tamagotchi"
        age = 0
        health = 5
        hunger = 5
        discipline = 5
        weight = 10
        death = false
        numberOfPoos = 0
        
    }
    
    func displayStats() -> String {
        
        return """
                Health: \(health)
                Hunger: \(hunger)
                Discipline: \(discipline)
                Weight: \(weight)

            """
    }
    
    func ageUp() {
        age = age+1
    }
    
    func healthDown() {
        health = health-1
        if health <= 0 {
            deathByHealth()
        }
    }
    
    func eatSnack() {
        hunger = hunger-2
        weight = weight+5
        if weight > 100 {
            deathByOverweight()
        }
    }
    
    func eatMeal() {
        hunger = hunger-4
        weight = weight+10
        if weight > 100 {
            deathByOverweight()
        }
    }
    
    func disciplineUp() {
        discipline = discipline+10
    }
    
    func flush() {
        numberOfPoos = 0
    }
    
    func poo() {
        numberOfPoos = numberOfPoos+1

    }
    
    func deathByOverweight() {
        death = true
    }
    
    func deathByAge() {
        death = true
    }
    
    func deathByHealth() {
        death = true
    }
    
    
}
