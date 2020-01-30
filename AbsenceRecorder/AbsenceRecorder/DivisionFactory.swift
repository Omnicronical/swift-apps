//
//  DivisionFactory.swift
//  AbsenceRecorder
//
//  Created by Hassall, Oscar (HWTA) on 30/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class DivisionFactory {
    
    static func createDivision(name: String, of size: Int) -> Division {
        let division = Division(name: name, size: size)
        let oneStudent = Student(firstName: "Larry", surname: "Jobson", birthdate: 12)
        division.students.append(oneStudent)
        
        return division
    }
}
