//
//  TamagotchiTests.swift
//  TamagotchiTests
//
//  Created by Hassall, Oscar (HWTA) on 19/11/2019.
//  Copyright © 2019 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest

class TamagotchiTests: XCTestCase {

    func testTamagotchiWithNoArgumentsReturnsNonNilObject() {
        //arrange
        
        //act
        let tamagotchi = Tamagotchi()
        
        //assert
        XCTAssertNotNil(tamagotchi)
    }
    
    func testTamagotchiWithNoArgumentsSetsDefaultValues() {
        //arrange
        
        //act
        let tamagotchi = Tamagotchi()
        
        //assert
        XCTAssertEqual(tamagotchi.health, 100)
        
    }
    
    func testDisciplineUpIncreasesLevelBy10() {
        //arrange
        let tamagotchi = Tamagotchi()
        //act
        tamagotchi.disciplineUp()
        //assert
        XCTAssertEqual(tamagotchi.discipline, 60)
        
        
    }
    

    }

