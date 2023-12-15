//
//  FormTests.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class FormTests : BaseClassUI {
    func testForm() throws {
        // Strings for the form data
        let firstName = "Gary"
        let lastName = "Behan"
        let emailAddress = "gary.b@browserstack.com"
        
        // Get and tap the Form button on the main page
        let formButton = app.buttons["form-btn-acc-id"]
        formButton.tap()
        
        // Get the fields that we want to type text into
        let firstNameField = app.textFields["first-name-field-acc-id"]
        let lastNameField = app.textFields["last-name-field-acc-id"]
        let emailAddressField = app.textFields["enter-email-field-acc-id"]
        
        // Tap and enter the relevant data into each field
        firstNameField.tap()
        firstNameField.typeText(firstName)
        lastNameField.tap()
        lastNameField.typeText(lastName)
        emailAddressField.tap()
        emailAddressField.typeText(emailAddress)
        
        // Tap the Submit button
        app.buttons["form-submit-btn-acc-id"].tap()
        
        // Assert that the name and email address have been populated correctly.
        XCTAssertTrue(app.staticTexts["entered-name-label-acc-id"].label.contains(firstName + " " + lastName))
        XCTAssertTrue(app.staticTexts["entered-email-label-acc-id"].label.contains(emailAddress))
    }
}
