//
//  UIBarButtonItem+SpaceFactory.swift
//  Facilities
//
//  Created by Tomasz Trznadel on 08.07.2015.
//  Copyright © 2015 ttrznadel. All rights reserved.
//

import Foundation
import UIKit


public extension UIBarButtonItem {

    /// Returns blank space to add between other items. The space is distributed equally between the other items. Other item properties are ignored when this value is set.
    public class var flexibleSpace: UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil)
    }

    /// Returns blank space to add between other items. Only the width property is used when this value is set.
    public class func fixedSpace(width: CGFloat) -> UIBarButtonItem {
        let button = UIBarButtonItem(barButtonSystemItem: .FixedSpace, target: nil, action: nil)
        button.width = width
        return button
    }

}