//
//  PFFeedbackPopViewController.swift
//  
//
//  Created by CH Kaan Bayrak on 18/10/2022.
//

import UIKit

class PFFeedbackPopViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var modelBackgroundView: UIView!
    @IBOutlet weak var feedbackTextField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var feedbackView: UIView!
    @IBOutlet weak var attachmentsLabel: UILabel!
    @IBOutlet weak var optionalLabel: UILabel!
    @IBOutlet weak var attachmentsCollectionView: UICollectionView!
    @IBOutlet weak var submitButton: UIButton!
    
    var attachmentViewModels : [ItemViewModel] = [  PFAttachmentAddViewModel() ]
    var reportType : PFReportType = .feedback

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        
    }
    
    func newAttachmentAddTapped(){
        
    }
    
}

extension PFFeedbackPopViewController {
    
    func setupUI(){
        if(self.reportType == .bug){
            self.titleLabel.text = "Bug Report"
        }else {
            self.titleLabel.text = "Feedback"
        }
        self.titleLabel.textColor = UIColor.black
        self.feedbackTextField.placeholder = "Please write your detailed message here..."
        self.feedbackTextField.contentVerticalAlignment = .top
        self.feedbackTextField.contentHorizontalAlignment = .left
        self.feedbackView.layer.cornerRadius = 12.0
        self.submitButton.layer.cornerRadius = 8.0
        self.submitButton.setTitle("Submit", for: .normal)
        self.submitButton.backgroundColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 232.0/255.0, alpha: 1.0)
        self.backgroundView.backgroundColor = UIColor.black
        self.backgroundView.alpha = 0.5
        self.modelBackgroundView.layer.cornerRadius = 12.0
        self.modelBackgroundView.backgroundColor = UIColor(red: 177.0/255.0, green: 177.0/255.0, blue: 198.0/255.0, alpha: 1.0)
        self.attachmentsCollectionView.reloadData()
    }
    
}

extension PFFeedbackPopViewController : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return attachmentViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = self.attachmentViewModels[indexPath.section]
        let reusableView = collectionView.dequeueReusableCell(withReuseIdentifier: model.reuseIdentifier, for: indexPath)
        model.setup(reusableView, in: collectionView, at: indexPath)
        return reusableView
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(attachmentViewModels[indexPath.row] is PFAttachmentAddViewModel){
            self.newAttachmentAddTapped()
        }
    }
    
}
