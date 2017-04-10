//
//  ViewControllersUITests.swift
//  FizzBuzz
//
//  Created by Robby Kim on 4/10/17.
//  Copyright © 2017 Robby. All rights reserved.
//

import XCTest

class ViewControllersUITests: XCTestCase {
    
    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
}
