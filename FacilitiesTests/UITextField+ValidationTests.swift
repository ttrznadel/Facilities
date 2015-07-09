//
//  UITextField+ValidationTests.swift
//  Facilities
//
//  Created by Tomasz Trznadel on 08.07.2015.
//  Copyright © 2015 ttrznadel. All rights reserved.
//

import XCTest
import Facilities


class UITextField_ValidationTests: XCTestCase {

    func testTextFieldValidationWithLenghtPredicateForSuccess() {
        let textField = UITextField(frame: CGRectZero)
        textField.validationPredicate =  NSPredicate(format: "SELF.length > 1")
        textField.text = "ab"

        XCTAssert(textField.validate(), "Text should be valid.")
    }

    func testTextFieldValidationWithLengthPredicateForFailure() {
        let textField = UITextField(frame: CGRectZero)
        textField.validationPredicate =  NSPredicate(format: "SELF.length > 1")
        textField.text = "a"

        XCTAssert(!textField.validate(), "Text shouldn't be valid.")
    }

    func testTextFieldValidationWithMatchesPredicateForSuccess() {
        let textField = UITextField(frame: CGRectZero)
        textField.validationPredicate =  NSPredicate(format:"SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
        textField.text = "address@email.com"

        XCTAssert(textField.validate(), "Email should be valid.")
    }

    func testTextFieldValidationWithMatchesPredicateForFailure() {

        let textField = UITextField(frame: CGRectZero)
        textField.validationPredicate =  NSPredicate(format:"SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
        textField.text = "address@email"

        XCTAssert(!textField.validate(), "Email shouldn't be valid.")
    }

    func testTextFieldValidationWithoutPredicateForSuccess() {
        let textField = UITextField(frame: CGRectZero)
        textField.text = "ab"

        XCTAssert(textField.validate(), "Text should be valid.")
    }

}
