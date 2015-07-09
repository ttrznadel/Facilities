//
//  UIViewController+Show.swift
//  Facilities
//
//  Created by Tomasz Trznadel on 08.07.2015.
//  Copyright © 2015 ttrznadel. All rights reserved.
//

import Foundation
import UIKit


public extension UIViewController {

    public func show(animated animated: Bool, completion: (() -> Void)? = nil) {
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window.windowLevel = UIWindowLevelNormal
        window.makeKeyAndVisible()
        window.rootViewController = UIViewController()
        window.rootViewController!.presentViewController(self, animated: animated, completion: completion)
    }

}