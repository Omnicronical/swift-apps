//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Hassall, Oscar (HWTA) on 30/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

class Student {
    let firstName: String
    let surname: String
    let birthdate: Int
    
    init(firstName: String, surname: String, birthdate: Int) {
        self.firstName = firstName
        self.surname = surname
        self.birthdate = birthdate
    }
}
