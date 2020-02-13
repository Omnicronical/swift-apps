//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Hassall, Oscar (HWTA) on 06/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Absence {
    var takenOn: Date
    var present: [Student] = []
    
    init(date: Date) {
        takenOn = date
    }
    
    init(date: Date, present:[Student]) {
        takenOn = date
        self.present = present
    }
    
}
