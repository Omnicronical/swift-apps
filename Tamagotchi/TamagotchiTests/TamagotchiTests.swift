//
//  TamagotchiTests.swift
//  TamagotchiTests
//
//  Created by Hassall, Oscar (HWTA) on 19/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest

class TamagotchiTests: XCTestCase {

    func testTamagotchiWithNoArguementsReturnsNonNilObjects() {
        //arrange
        
        //act
        let tamagotchi = Tamagotchi()
        
        //assert
        XCTAssertNotNil(tamagotchi)
    }
    
    func testTamagotchiSetsFirstAttributes() {
        //arrange
        
        //act
        let tamagotchi = Tamagotchi()
        let actual = tamagotchi.firstAttributes()
        let expected : [Double] = [0.0, 100.0, 50.0, 0.0, 25.0, 5.0]
        //Age, Health, Discipline, NumberOfPoos, weight, hunger
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testTamagotchiAddsOneToAge() {

        let tamagotchi = Tamagotchi()
        let attributes = tamagotchi.firstAttributes()
        let age = attributes[0]
        let actual = tamagotchi.ageUp(age: age)
        let expected = 1.0
        
        XCTAssertEqual(actual, expected)
    }
}
