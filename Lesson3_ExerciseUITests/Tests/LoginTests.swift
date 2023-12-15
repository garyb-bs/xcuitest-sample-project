//
//  LoginTest.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class LoginTests : BaseClassUI {
    func testSuccessLogin() throws {
        let username = "correct"
        let password = "please"
        
        app.buttons["login-btn-acc-id"].tap()
        
        let usernameField = app.textFields["username-field-acc-id"]
        usernameField.tap()
        usernameField.typeText(username)
        
        let passwordField = app.secureTextFields["password-field-acc-id"]
        passwordField.tap()
        passwordField.typeText(password)
        
        let loginButton = app.buttons["login-page-btn-acc-id"]
        loginButton.tap()
        
        XCTAssertTrue(app.staticTexts["login-status-label-acc-id"].label.contains("You have logged in successfully"))
    }

    func testFailedLogin() throws {
        let username = "incorrect"
        let password = "please"
        
        app.buttons["login-btn-acc-id"].tap()
        
        let usernameField = app.textFields["username-field-acc-id"]
        usernameField.tap()
        usernameField.typeText(username)
        
        let passwordField = app.secureTextFields["password-field-acc-id"]
        passwordField.tap()
        passwordField.typeText(password)
        
        let loginButton = app.buttons["login-page-btn-acc-id"]
        loginButton.tap()
        
        XCTAssertTrue(app.staticTexts["login-status-label-acc-id"].label.contains("You have entered incorrect credentials"))
        
    }
}
