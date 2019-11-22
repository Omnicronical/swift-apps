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
}
