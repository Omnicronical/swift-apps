//
//  VisualisingDataStructuresTests.swift
//  VisualisingDataStructuresTests
//
//  Created by Hassall, Oscar (HWTA) on 28/01/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest
@testable import VisualisingDataStructures

class VisualisingDataStructuresTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPushFunctionAddsNumberToTheArray() {
        let stack = Stack()
        stack.push(input: 10)
        let actual = stack.stack
        print(actual)
        let expected = [10,0,0,0,0,0,0,0,0,0]
        
        
        XCTAssertEqual(actual, expected)
        
    }
    
    func testPopFunctionRemovesNumberFromArrayAndOutputsIt() {
        let stack = Stack()
        stack.push(input: 10)
        let actual = stack.pop()
        let actualArray = stack.stack
        let expectedArray = [0,0,0,0,0,0,0,0,0,0]
        let expected = 10
        
        XCTAssertEqual(actual, expected)
        XCTAssertEqual(actualArray, expectedArray)
        
        
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
