//
//  SwitchesTests.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class SwitchesTests : BaseClassUI {
    func testSwitchNumberOne() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switch-one-text-acc-id"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switch-one-acc-id"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switch-one-acc-id"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switch-one-text-acc-id"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switch-one-acc-id"].value as? String) == "1")
    }
    
    func testSwitchNumberTwo() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switch-two-text-acc-id"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switch-two-acc-id"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switch-two-acc-id"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switch-two-text-acc-id"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switch-two-acc-id"].value as? String) == "1")
    }
    
    func testSwitchNumberThree() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switch-three-text-acc-id"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switch-three-acc-id"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switch-three-acc-id"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switch-three-text-acc-id"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switch-three-acc-id"].value as? String) == "1")
    }
    
    func testSwitchNumberFour() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switch-four-text-acc-id"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switch-four-acc-id"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switch-four-acc-id"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switch-four-text-acc-id"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switch-four-acc-id"].value as? String) == "1")
    }
    
    func testSwitchNumberFive() throws {
        app.buttons["switches-btn-acc-id"].tap()
        
        // Assert that the label is set to Off
        XCTAssertTrue(app.staticTexts["switch-five-text-acc-id"].label.contains("Off"))
        
        // Assert that the switche is currently in the off position
        XCTAssert((app.switches["switch-five-acc-id"].value as? String) == "0")
        
        // Tap the switch to turn it on
        app.switches["switch-five-acc-id"].tap()
        
        // Assert that the label is now set to on
        XCTAssertTrue(app.staticTexts["switch-five-text-acc-id"].label.contains("On"))
        
        // Assert that the switch is now in the On position
        XCTAssert((app.switches["switch-five-acc-id"].value as? String) == "1")
    }
}
