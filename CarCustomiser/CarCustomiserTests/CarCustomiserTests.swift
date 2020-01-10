//
//  CarCustomiserTests.swift
//  CarCustomiserTests
//
//  Created by Hassall, Oscar (HWTA) on 10/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest
@testable import CarCustomiser

class CarCustomiserTests: XCTestCase {

    func testCarGetsStats() {
    let car = Car(make: "Mazda", model: "MK-5", topSpeed: 125, acceleration: 7.7, handling: 5)
    let expected = """

    Make: Mazda
    Model: MK-5
    Top Speed: 125
    Acceleration (0-60 in): 7.7
    Handling: 5

    """
        let actual = car.displayStats()
        
        XCTAssertEqual(actual, expected)
    
    }
}
