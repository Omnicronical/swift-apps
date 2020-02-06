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
    var absent: [Student] = []
    var selectedRows: [IndexPath]?
    
    init(date: Date) {
        takenOn = date
    }
}
