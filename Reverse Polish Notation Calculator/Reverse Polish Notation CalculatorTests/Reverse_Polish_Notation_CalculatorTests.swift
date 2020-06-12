//
//  Reverse_Polish_Notation_CalculatorTests.swift
//  Reverse Polish Notation CalculatorTests
//
//  Created by Hassall, Oscar (HWTA) on 09/06/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest
@testable import Reverse_Polish_Notation_Calculator

class Reverse_Polish_Notation_CalculatorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOperandAdd() {
        var operand = Operand()
        
        operand.add(input: "2")
        var actual = operand.getArray()
        var expected = "+2"
        
        XCTAssertEqual(actual, expected)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testOperandGetArray() {
        var operand = Operand()
        
        operand.add(input: "2")
        operand.add(input: "33")
        operand.add(input: "888")
        var actual = operand.getArray()
        var expected = "+233888"
        
        XCTAssertEqual(actual, expected)
    }
    
    func testOperandGetRawArray() {
        var operand = Operand()
        
        operand.add(input: "6")
        var actual = operand.getRawArray()
        var expected = ["+","6"]
        
        XCTAssertEqual(actual, expected)
    }
    
    func testOperandClear() {
        var operand = Operand()
        
        operand.add(input: "324")
        operand.add(input: "656")
        operand.add(input: "8768")
        operand.clear()
        var actual = operand.getArray()
        var expected = "+"
        
        XCTAssertEqual(actual, expected)
    }
    
    func testOperandFlipSign() {
        var operand = Operand()
        
        operand.add(input: "33")
        operand.flipSign(input: "-")
        var actual = operand.getArray()
        var expected = "-33"
        
        XCTAssertEqual(actual, expected)
    }


    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
