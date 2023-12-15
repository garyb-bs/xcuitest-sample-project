//
//  AlertTests.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class AlertTests : BaseClassUI {
    func testAlertYes() throws {
        let alertButton = app.buttons["Alert"]
        alertButton.tap()
        
        // Assert that the popup dialog appears
        XCTAssertEqual(app.alerts.element.label, "Alert")
        XCTAssert(app.alerts.element.staticTexts["This is a native alert"].exists)
        
        // Tap the "Yes" button in the dialog
        app.alerts.scrollViews.otherElements.buttons["Yes"].tap()
        
        // Assert that the text from the Alert page is visible and matches what we expect
        XCTAssertTrue(app.staticTexts["alert-page-text-acc-id"]
            .label.contains("You are on the Alert page!"))
    }
    
    func testAlertNo() throws {
        // Define the Alert button as we will be interacting with it multiple times.
        let alertButton = app.buttons["alert-btn-acc-id"]
        alertButton.tap()
        
        // Tap the "Yes" button in the dialog
        app.alerts.scrollViews.otherElements.buttons["Yes"].tap()
        
        // Define the Go Back button for consistency
        let goBackButton = app.buttons["go-back-btn-acc-id"]
        
        // Wait 5 seconds to make sure the back button is there. (BAD PRACTICE)
        XCTAssert(goBackButton.waitForExistence(timeout: 5));
        goBackButton.tap()

        // Wait another 5 seconds for the Alert button to appear (BAD PRACTICE)
        XCTAssert(alertButton.waitForExistence(timeout: 5));
        alertButton.tap()

        // Tap the "No" button in the dialog
        app.alerts.scrollViews.otherElements.buttons["No"].tap()
        
        // Assert that the Alert button is visible
        XCTAssertTrue(alertButton.isHittable)
    }
    
    func testGeneric() throws {
        
    }
    
    
}
