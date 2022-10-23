//
//  File.swift
//  
//
//  Created by CH Kaan Bayrak on 23/10/2022.
//

import Foundation
import UIKit

extension UIView {
    
    func snapshot() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
   }
    
}
