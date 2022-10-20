//
//  PFAttachmentViewModel.swift
//  
//
//  Created by CH Kaan Bayrak on 20/10/2022.
//

import Foundation
import UIKit

struct PFAttachmentViewModel: ItemViewModel {
    
    let image: UIImage
    
    var reuseIdentifier: String {
        return "attachmentCellId"
    }
    
    func setup(_ cell: UICollectionReusableView, in collectionView: UICollectionView, at indexPath: IndexPath) {
        guard let cell = cell as? PFAttachmentCollectionViewCell else {
            return
        }
        cell.imageView.contentMode = .scaleAspectFit
        cell.imageView.image = self.image
        cell.layer.cornerRadius = 18.0
        cell.layer.borderWidth = 1.0
        cell.layer.borderColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 232.0/255.0, alpha: 1.0).cgColor
        cell.clipsToBounds = true
    }
}
