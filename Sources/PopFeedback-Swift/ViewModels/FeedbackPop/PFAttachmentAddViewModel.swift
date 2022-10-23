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
        cell.backgroundView.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.attachmentAddButtonBackgroundColor
        cell.plusHorizontalView.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.attachmentAddButtonPlusColor
        cell.plusVerticalView.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.attachmentAddButtonPlusColor
        cell.backgroundView.layer.cornerRadius = 18.0
        cell.backgroundView.layer.borderWidth = 1.0
        cell.backgroundView.layer.borderColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.attachmentAddButtonStrokeColor.cgColor
        cell.clipsToBounds = true
    }
}
