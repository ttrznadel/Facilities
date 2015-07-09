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

    func testTextFieldValidationWithPredicateForSuccess() {
        let textField = UITextField(frame: CGRectZero)
        textField.validationPredicate =  NSPredicate(format: "SELF.length > 1")
        textField.text = "ab"

        XCTAssert(textField.validate(), "Text should be valid.")
    }

    func testTextFieldValidationWithoutPredicateForSuccess() {
        let textField = UITextField(frame: CGRectZero)
        textField.text = "ab"

        XCTAssert(textField.validate(), "Text should be valid.")
    }

    func testTextFieldValidationWithPredicateForFailure() {
        let textField = UITextField(frame: CGRectZero)
        textField.validationPredicate =  NSPredicate(format: "SELF.length > 1")
        textField.text = "a"

        XCTAssert(!textField.validate(), "Text shouldn't be valid.")
    }

}
