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
        cell.bView.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.attachmentAddButtonBackgroundColor
        cell.plusHorizontalView.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.attachmentAddButtonPlusColor
        cell.plusVerticalView.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.attachmentAddButtonPlusColor
        cell.bView.layer.cornerRadius = 18.0
        cell.bView.layer.borderWidth = 1.0
        cell.bView.layer.borderColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.attachmentAddButtonStrokeColor.cgColor
        cell.clipsToBounds = true
    }
}
