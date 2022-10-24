//
//  File.swift
//  
//
//  Created by CH Kaan Bayrak on 23/10/2022.
//

import Foundation
import UIKit

extension UIWindow {
    
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        
        if motion == .motionShake {
            print("Device shaken")
            NotificationCenter.default.post(name: NSNotification.Name("PFDeviceShakeDetected"), object: nil)
        }
    }
    
}

extension UIImage {
    
    func convertImageToBase64String() -> String {
        return self.jpegData(compressionQuality: 1)?.base64EncodedString() ?? ""
    }
    
}

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

extension String {
    
    func convertBase64StringToImage () -> UIImage {
        let imageData = Data(base64Encoded: self)
        let image = UIImage(data: imageData!)
        return image!
    }
    
}

extension UIView {
    
    func snapshot() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
   }
    
}
