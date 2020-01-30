//
//  ViewController.swift
//  AbsenceRecorder
//
//  Created by Hassall, Oscar (HWTA) on 30/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var divisions: [Division] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addData()
        // iterate over ever division
        // for each division, outputs its name and the number of students in it to the console
        // for each division, ouptut each of its students name
    }

    func addData(){

        divisions.append(DivisionFactory.createDivision(name: "14", of: 10))
        print(divisions[0].name, divisions[0].students[0].firstName)
        divisions.append(DivisionFactory.createDivision(name: "124", of: 10))
        print(divisions[1].name, divisions[1].students[0].firstName)
        for i in (0...(divisions.count-1)) {
            print(divisions[i].name, divisions[i].size)
        }
        
    }
    

}

