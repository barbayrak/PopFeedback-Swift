//
//  PFUIImage+Extension.swift
//  
//
//  Created by CH Kaan Bayrak on 21/10/2022.
//

import Foundation
import UIKit

extension String {
    
    func convertBase64StringToImage () -> UIImage {
        let imageData = Data(base64Encoded: self)
        let image = UIImage(data: imageData!)
        return image!
    }
    
}
