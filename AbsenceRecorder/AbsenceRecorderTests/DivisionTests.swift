//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Hassall, Oscar (HWTA) on 09/03/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest

class DivisionTests: XCTestCase {

    func testGetAbsenceWithCurrentDateRetrievesExistingAbsenceOnSameDay() {
        
        let division = Division(name: "TestDiv")
        let absence = Absence(date: Date())
        division.absences.append(absence)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        
        let actual = division.getAbsence(for: dateLaterToday)
        
        XCTAssertNotNil(actual)
        
        
        
        
    }

}
