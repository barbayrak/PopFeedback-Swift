//
//  ItemViewModel.swift
//  
//
//  Created by CH Kaan Bayrak on 20/10/2022.
//

import Foundation
import UIKit

protocol ItemViewModel {
    
    var reuseIdentifier: String { get }
    
    func setup(_ cell: UICollectionReusableView, in collectionView: UICollectionView, at indexPath: IndexPath)
}
