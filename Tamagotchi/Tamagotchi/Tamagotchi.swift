//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Hassall, Oscar (HWTA) on 22/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Tamagotchi {
    var age = 0
    var health = 100
    var discipline = 50
    var numberOfPoos = 0
    var weight = 25
    var hunger = 5
    var death = false

    
    func ageUp() {
        age = age+1
    }
    
    func healthDown() {
        health = health-1
    }
    
    func eatSnack() {
        hunger = hunger-2
        weight = weight+5
    }
    
    func eatMeal() {
        hunger = hunger-4
        weight = weight+10
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
