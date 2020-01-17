//
//  ViewController.swift
//  Tamagotchi App
//
//  Created by Hassall, Oscar (HWTA) on 14/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var feedSnack: UIButton!
    @IBOutlet var feedMeal: UIButton!
    @IBOutlet var statistics: UILabel!
    @IBOutlet var discipline: UIButton!
    
    
    var timer: Timer?
    var tamagotchi = Tamagotchi()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        statistics.text = tamagotchi.displayStats()
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timedChecker), userInfo: nil, repeats: true)
        
    }
   
    func updateDisplay() {
        statistics.text = tamagotchi.displayStats()
    }
    
    @IBAction func feedMealButtonPush(_ sender: Any) {
        tamagotchi.eatMeal()
        updateDisplay()
    }
    
    @IBAction func feedSnackButtonPush(_ sender: Any) {
        tamagotchi.eatSnack()
        updateDisplay()
    }
    
    @IBAction func timeOutButtonPushed(_ sender: Any) {
        let intimidation = Int.random(in: 0...10)
        if intimidation <= 2 {
            
            let alert = UIAlertController(title: "Too Soft", message: "You did not manage to discipline \(tamagotchi.name)", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
        
        tamagotchi.disciplineUp()
        updateDisplay()
        
    }
    
    @objc func timedChecker() {
        if tamagotchi.death == true {
            let alert = UIAlertController(title: "Tamagotchi has DIED", message: nil, preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Start Again", style: .default, handler: nil))
            
            self.present(alert, animated: true)
            viewDidLoad()
        }
    }
    
    
    
}

