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
    var absences: [Absence] = []
    
    
    init(name: String){
        self.name = name
    }
    
    
    func getAbsence(for date : Date) -> Absence? {
        return absences.first { $0.takenOn == date }
    }
}
