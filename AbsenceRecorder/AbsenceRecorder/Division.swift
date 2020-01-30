//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Hassall, Oscar (HWTA) on 30/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Division {
    let name: String
    var students: [Student] = []
    let size: Int
    
    init(name: String, size: Int){
        self.name = name
        self.size = size
    }
}
