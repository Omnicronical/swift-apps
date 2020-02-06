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
    
    func hasAbsence(for date: Date) -> Bool {
        for absence in absences {
            if absence.takenOn == date {
                return true
            }
        }
        return false

    }
    
    func getAbsence(for date : Date) -> Absence? {
        
        for absence in absences {
            if absence.takenOn == date {
                return absence
            }
        }
        return nil
        
    }
}
