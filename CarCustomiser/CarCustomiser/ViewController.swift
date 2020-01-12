//
//  ViewController.swift
//  CarCustomiser
//
//  Created by Hassall, Oscar (HWTA) on 10/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var enhancedEngine: UISwitch!
    @IBOutlet var extraGripTires: UISwitch!
    @IBOutlet var nitroBoost: UISwitch!
    @IBOutlet var raceSuspension: UISwitch!
    @IBOutlet var rocketBooster: UISwitch!
   
    @IBOutlet var carImageDisplay: UIImageView!
    @IBOutlet var fundsDisplay: UILabel!
    @IBOutlet var carStatistics: UILabel!
    
    var funds = 1_000 {
        didSet {
            fundsDisplay.text = "Remaining Funds: \(funds)"
        }
    }
    
    // Costs of the Packages
    
    var engineCost = 500
    var tiresCost = 450
    var nitroCost = 550
    var suspensionCost = 400
    var rocketCost = 1000
        
    var imageNames = ["Mazda MK-5", "Porsche 911", "Dodge Charger", "Shelby gt 500"]
    var starterCars = StarterCars()
    var carCounter = 0
    var car: Car? {
        didSet {
            carStatistics.text = car?.displayStats()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        car = starterCars.cars[carCounter]
        carImageDisplay.image = UIImage(named: "Mazda MK-5")
        fundsDisplay.text = "Remaining Funds: \(funds)"
    }


   
    
    @IBAction func nextCar(  sender: Any) {
        carCounter += 1
        if carCounter >= starterCars.cars.count {
            carCounter = 0
        }
        car = starterCars.cars[carCounter]
        carImageDisplay.image = UIImage(named: imageNames[carCounter])
        
    }

    // All of the Packages
    
    
    @IBAction func enhancedEngineToggle(  sender: Any) {
        if enhancedEngine.isOn {
            car?.topSpeed += 5
            funds -= engineCost

        } else {
            car?.topSpeed -= 5
            funds += engineCost
        }
        if (funds - tiresCost) < 0 && (extraGripTires.isOn == false){
            extraGripTires.isEnabled = false
        } else {
            extraGripTires.isEnabled = true
        }
        
        if (funds - nitroCost) < 0 && (nitroBoost.isOn == false) {
            nitroBoost.isEnabled = false
        } else {
            nitroBoost.isEnabled = true
        }
        
        if (funds - suspensionCost) < 0 && (raceSuspension.isOn == false) {
            raceSuspension.isEnabled = false
        } else {
            raceSuspension.isEnabled = true
        }
        
        if (funds - rocketCost) < 0 && (rocketBooster.isOn == false) {
            rocketBooster.isEnabled = false
        } else {
            rocketBooster.isEnabled = true
        }
    }
    
    @IBAction func extraGripTiresToggle(  sender: Any) {
        
        if extraGripTires.isOn {
            car?.handling += 1
            car?.acceleration -= 1.0
            funds -= tiresCost
            
        } else {
            car?.handling -= 1
            car?.acceleration += 1.0
            funds += tiresCost
        }
        if (funds - engineCost) < 0 && (enhancedEngine.isOn == false) {
            enhancedEngine.isEnabled = false
        } else {
            enhancedEngine.isEnabled = true
        }
        
        if (funds - nitroCost) < 0 && (nitroBoost.isOn == false) {
            nitroBoost.isEnabled = false
        } else {
            nitroBoost.isEnabled = true
        }
        
        if (funds - suspensionCost) < 0 && (raceSuspension.isOn == false) {
            raceSuspension.isEnabled = false
        } else {
            raceSuspension.isEnabled = true
        }
        
        if (funds - rocketCost) < 0 && (rocketBooster.isOn == false) {
            rocketBooster.isEnabled = false
        } else {
            rocketBooster.isEnabled = true
        }
        
        
    }
    
    @IBAction func nitroBoostToggle(  sender: Any) {
        
        if nitroBoost.isOn {
            car?.topSpeed += 10
            car?.acceleration -= 1.5
            funds -= nitroCost
            
        } else {
            car?.topSpeed -= 10
            car?.acceleration += 1.5
            funds += nitroCost
        }
        if (funds - engineCost) < 0 && (enhancedEngine.isOn == false) {
            enhancedEngine.isEnabled = false
        } else {
            enhancedEngine.isEnabled = true
        }
        
        if (funds - tiresCost) < 0 && (extraGripTires.isOn == false) {
            extraGripTires.isEnabled = false
        } else {
            extraGripTires.isEnabled = true
        }
        
        if (funds - suspensionCost) < 0 && (raceSuspension.isOn == false) {
            raceSuspension.isEnabled = false
        } else {
            raceSuspension.isEnabled = true
        }
        
        if (funds - rocketCost) < 0 && (rocketBooster.isOn == false) {
            rocketBooster.isEnabled = false
        } else {
            rocketBooster.isEnabled = true
        }
        
    }
    
    @IBAction func raceSuspensionToggle(  sender: Any) {
        
        if raceSuspension.isOn {
            car?.handling += 3
            funds -= suspensionCost
            
        } else {
            car?.handling -= 3
            funds += suspensionCost
        }
        if (funds - engineCost) < 0 && (enhancedEngine.isOn == false) {
            enhancedEngine.isEnabled = false
        } else {
            enhancedEngine.isEnabled = true
        }
        
        if (funds - tiresCost) < 0 && (extraGripTires.isOn == false) {
            extraGripTires.isEnabled = false
        } else {
            extraGripTires.isEnabled = true
        }
        
        if (funds - nitroCost) < 0 && (nitroBoost.isOn == false) {
            nitroBoost.isEnabled = false
        } else {
            nitroBoost.isEnabled = true
        }
        
        if (funds - rocketCost) < 0 && (rocketBooster.isOn == false) {
            rocketBooster.isEnabled = false
        } else {
            rocketBooster.isEnabled = true
        }
        
    }
    
    @IBAction func rocketBoosterToggle(  sender: Any) {
        
        if rocketBooster.isOn {
            car?.topSpeed += 40
            car?.acceleration -= 3.0
            funds -= rocketCost
            
        } else {
            car?.topSpeed -= 40
            car?.acceleration += 3.0
            funds += rocketCost
        }
        if (funds - engineCost) < 0 && (enhancedEngine.isOn == false) {
            enhancedEngine.isEnabled = false
        } else {
            enhancedEngine.isEnabled = true
        }
        
        if (funds - tiresCost) < 0 && (extraGripTires.isOn == false) {
            extraGripTires.isEnabled = false
        } else {
            extraGripTires.isEnabled = true
        }
        
        if (funds - nitroCost) < 0 && (nitroBoost.isOn == false) {
            nitroBoost.isEnabled = false
        } else {
            nitroBoost.isEnabled = true
        }
        
        if (funds - suspensionCost) < 0 && (raceSuspension.isOn == false) {
            raceSuspension.isEnabled = false
        } else {
            raceSuspension.isEnabled = true
        }
        
    }
    
    
}

