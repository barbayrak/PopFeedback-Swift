//
//  PFUIImage+Extension.swift
//  
//
//  Created by CH Kaan Bayrak on 21/10/2022.
//

import Foundation
import UIKit

extension UIImage {
    
    func convertBase64StringToImage (imageBase64String:String) -> UIImage {
        let imageData = Data(base64Encoded: imageBase64String)
        let image = UIImage(data: imageData!)
        return image!
    }
    
}
