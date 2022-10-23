//
//  File.swift
//  
//
//  Created by CH Kaan Bayrak on 23/10/2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    var top: UIViewController? {
        if let controller = self as? UINavigationController {
            return controller.topViewController?.top
        }
        if let controller = self as? UISplitViewController {
            return controller.viewControllers.last?.top
        }
        if let controller = self as? UITabBarController {
            return controller.selectedViewController?.top
        }
        if let controller = presentedViewController {
            return controller.top
        }
        return self
    }
    
}
