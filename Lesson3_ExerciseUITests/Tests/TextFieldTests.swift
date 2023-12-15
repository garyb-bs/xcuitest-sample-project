//
//  TextFieldTests.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2023.
//

import XCTest

class TextFieldTests : BaseClassUI {
    func testTextField() throws {
        // The text that will be typed into the text field and then output to the label
        let textToEnter = "Sky App Training"
        
        // Get and tap the Text Field button on the main page
        let textButton = app.buttons["txt-field-btn-acc-id"]
        textButton.tap()
        
        // Tap and enter text into the text field.
        let textField = app.textFields["enter-text-box-acc-id"]
        textField.tap()
        textField.typeText(textToEnter)
        
        let submitButton = app.buttons["enter-text-btn-acc-id"]
        submitButton.tap()
        
        // Assert that the label under the text field has been populated with the text we entered
        XCTAssertTrue(app.staticTexts["entered-txt-label-acc-id"].label.contains(textToEnter))
    }
}
