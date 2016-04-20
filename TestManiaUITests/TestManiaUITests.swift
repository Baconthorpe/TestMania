//
//  TestManiaUITests.swift
//  TestManiaUITests
//
//  Created by Ezekiel Abuhoff on 4/19/16.
//  Copyright © 2016 Ezekiel Abuhoff. All rights reserved.
//

import XCTest

class TestManiaUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDisplayOfGoodBehavior() {
        XCTAssert(XCUIApplication().staticTexts["OK"].exists)
        
        var behaveButton = XCUIApplication().buttons["Behave"]
        for _ in 0...5 {
            behaveButton = XCUIApplication().buttons["Behave"]
            if behaveButton.exists {
                break
            }
            sleep(1)
        }
        XCTAssert(behaveButton.exists)
        
        var coolLabel = XCUIApplication().staticTexts["COOL"]
        for _ in 0...5 {
            coolLabel = XCUIApplication().staticTexts["COOL"]
            if coolLabel.exists {
                break
            }
            behaveButton.tap()
            sleep(1)
        }
        XCTAssert(coolLabel.exists)
    }
    
    func testDisplayOfBadBehavior() {
        XCTAssert(XCUIApplication().staticTexts["OK"].exists)
        
        var behaveButton = XCUIApplication().buttons["Misbehave"]
        for _ in 0...5 {
            behaveButton = XCUIApplication().buttons["Misbehave"]
            if behaveButton.exists {
                break
            }
            sleep(1)
        }
        XCTAssert(behaveButton.exists)
        
        var coolLabel = XCUIApplication().staticTexts["YIKES!"]
        for _ in 0...5 {
            coolLabel = XCUIApplication().staticTexts["YIKES!"]
            if coolLabel.exists {
                break
            }
            behaveButton.tap()
            sleep(1)
        }
        XCTAssert(coolLabel.exists)
    }
    
    func testSimple {
        XCTAssert(true)
    }
    
}
