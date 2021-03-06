//
//  FastYXZLaneUITests.swift
//  FastYXZLaneUITests
//
//  Created by Kartik Mehta on 09/05/19.
//  Copyright © 2019 Kartik Mehta. All rights reserved.
//

import XCTest

class FastYXZLaneUITests: XCTestCase {

 
    func testExample() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        // 2
        let chipCountTextField = app.textFields["chip count"]
        chipCountTextField.tap()
        chipCountTextField.typeText("10")
        // 3
        let bigBlindTextField = app.textFields["big blind"]
        bigBlindTextField.tap()
        bigBlindTextField.typeText("100")
        // 4
        snapshot("01UserEntries")
        // 5
        app.buttons["what should i do"].tap()
        snapshot("02Suggestion")
    }

}
