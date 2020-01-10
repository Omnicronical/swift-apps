//
//  ViewController.swift
//  CarCustomiser
//
//  Created by Hassall, Oscar (HWTA) on 10/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var carStatistics: UILabel!
    
    var car = Car(make: "Mazda", model: "MK-5", topSpeed: 125, acceleration: 7.7, handling: 5)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        carStatistics.text = car.displayStats()
    }


}

