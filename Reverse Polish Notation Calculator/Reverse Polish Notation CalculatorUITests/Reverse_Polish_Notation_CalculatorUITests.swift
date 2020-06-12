//
//  Reverse_Polish_Notation_CalculatorUITests.swift
//  Reverse Polish Notation CalculatorUITests
//
//  Created by Hassall, Oscar (HWTA) on 09/06/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import XCTest

@testable import Reverse_Polish_Notation_Calculator

class Reverse_Polish_Notation_CalculatorUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWhetherANumberButtonPrintsThatSameNumberToTheDisplay() {
        // UI tests must launch the application that they test.
        
        let app = XCUIApplication()
        app.launch()
        let VC = ViewController()
        
        //I think there is a bug in Xcode because @testable import Reverse_Polish_Notation_Calculator does not work
        
        app.buttons["9"].tap()
        var actual = VC.display.text
        var expected = "9"
        
        XCTAssertEqual(actual, expected)

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
