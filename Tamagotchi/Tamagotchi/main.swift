//
//  main.swift
//  Tamagotchi
//
//  Created by Hassall, Oscar (HWTA) on 19/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

print("Hello, World!")

let tamagotchi = Tamagotchi()

func main() {
    repeat {
        print("Health : ", tamagotchi.health)
        print("Weight : ", tamagotchi.weight)
        print("Hunger : ", tamagotchi.hunger)
        print("Discipline : ", tamagotchi.discipline)
        print("Age : ", tamagotchi.age)
        
        if let request = readLine(){
            if request == "1" {
                print("Feeding your Tamagotchi one Snack")
                print ("Hunger decreases by 2")
                tamagotchi.eatSnack()
            }
            if request == "2" {
                print("Feeding your Tamagotchi one Meal")
                print ("Hunger decreases by 4")
                tamagotchi.eatMeal()
            }
            if request == "3" {
                print("Flushing the Poo")
                print("All the Poo has been flushed away")
                tamagotchi.flush()
            }
        }
        
        if Int.random(in: 0...100) >= 80{
            print("Your Tamagotchi did a Poo!")
            tamagotchi.poo()
        }
        if Int.random(in: 0...1000) == 500 {
            print("Your Tamagotchi got hit by a bus!!!")
            tamagotchi.death = false
        }
        if Int.random(in: 0...1000) >= 250 {
            print("Your Tamagotchi grew up!")
            tamagotchi.ageUp()
        }
        
        if tamagotchi.health == 0{
            tamagotchi.deathByHealth()
        } else if tamagotchi.weight >= 100 {
            tamagotchi.deathByOverweight()
        } else if tamagotchi.age >= 26 {
            tamagotchi.deathByAge()
        }
        
        
    } while tamagotchi.death == false
}

main()
