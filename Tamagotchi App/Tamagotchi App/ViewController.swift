//
//  ViewController.swift
//  Tamagotchi App
//
//  Created by Hassall, Oscar (HWTA) on 14/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var statistics: UILabel!
    
    var tamagotchi: Tamagotchi?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        statistics.text = tamagotchi?.displayStats()
            
        
    }


}

