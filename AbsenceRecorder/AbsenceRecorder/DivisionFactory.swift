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
        let division = Division(name: name)
        var vCV1surnameArray = ["Hench","Scrub","Denver","Toronto","Smalls","Gross","Korma","Reisling","Handover","Trent"]
        var vEX1surnameArray = ["Squanch","Trinolo","Ansl","Gaba Gaba","Huugh","Deasle","Bruot","Keisling","Hemp","Banta","Freiedrick","Frost"]
        if division.name == "vEX-1" {
            for i in 0...size-1 {
                let oneStudent = Student(firstName: "FirstName\(i)", surname: "\(vEX1surnameArray[i])", birthdate: i)
                division.students.append(oneStudent)
            }
        } else if division.name == "vCZ-1" {
            for i in 0...size-1 {
                let oneStudent = Student(firstName: "FirstName\(i)", surname: "\(vCV1surnameArray[i])", birthdate: i)
                division.students.append(oneStudent)
            }
            
        }
       
        return division
    }
}
