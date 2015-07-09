//
//  UITextField+Validation.swift
//  Facilities
//
//  Created by Tomasz Trznadel on 08.07.2015.
//  Copyright © 2015 ttrznadel. All rights reserved.
//

import Foundation
import UIKit


public extension UITextField {

    /// Validate text with validation predicate.
    public func validate() -> Bool {
        if let predicate = validationPredicate {
            return predicate.evaluateWithObject(text) ? true : false
        }
        return true
    }

    /// Predicate used to validate text.
    public var validationPredicate: NSPredicate? {
        get {
            return objc_getAssociatedObject(self, &AssociatedObjectKey.predicate) as? NSPredicate
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedObjectKey.predicate, newValue as NSPredicate?, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }

    private struct AssociatedObjectKey {
        static var predicate: Void?
    }

}