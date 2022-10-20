//
//  PFAttachmentAddViewModel.swift
//  
//
//  Created by CH Kaan Bayrak on 20/10/2022.
//

import Foundation
import UIKit

struct PFAttachmentAddViewModel: ItemViewModel {
    
    var reuseIdentifier: String {
        return "attachmentAddCellId"
    }
    
    func setup(_ cell: UICollectionReusableView, in collectionView: UICollectionView, at indexPath: IndexPath) {
        guard let cell = cell as? PFAttachmentAddCollectionViewCell else {
            return
        }
        cell.backgroundView.backgroundColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 232.0/255.0, alpha: 1.0)
        cell.plusHorizontalView.backgroundColor = UIColor.white
        cell.plusVerticalView.backgroundColor = UIColor.white
        cell.backgroundView.layer.cornerRadius = 18.0
        cell.backgroundView.layer.borderWidth = 1.0
        cell.backgroundView.layer.borderColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 232.0/255.0, alpha: 1.0).cgColor
        cell.clipsToBounds = true
    }
}
