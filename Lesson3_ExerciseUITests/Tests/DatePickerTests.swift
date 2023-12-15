//
//  DatePickerTests.swift
//  Lesson3_ExerciseUITests
//
//  Created by Gary Behan on 27/10/2022.
//

import XCTest

class DatePickerTests : BaseClassUI {
    func testDatePicker() throws {
        // Variables for the date
        let month = "September"
        let day = "20"
        let year = "2025"
        
        // Get and tap the Date Picker button on the main page
        app.buttons["date-btn-acc-id"].tap()
        
        // Declare the date component to get the current ddate and get the full month value using the formatter
        let dateComponent = Calendar.current.dateComponents([.day, .month, .year], from: Date())
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM"
        let monthText = formatter.string(from: Date())
        
        // Get the picker wheel and select the date based on the above variables
        let pickerWheels = app.datePickers.pickerWheels
        pickerWheels[String(dateComponent.day!)].adjust(toPickerWheelValue: day)
        pickerWheels[monthText].adjust(toPickerWheelValue: month)
        pickerWheels[String(dateComponent.year!)].adjust(toPickerWheelValue: year)
        
        // Assert that the date is correct
        XCTAssert(app.staticTexts["EnteredDateLabel"].label == day + " " + month + ", " + year)
    }
}
