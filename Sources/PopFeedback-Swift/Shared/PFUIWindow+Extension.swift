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
