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
    
    var attachments = [String]()
    var attachmentViewModels : [ItemViewModel] = [  PFAttachmentAddViewModel() ]
    var reportType : PFReportType = .feedback
    
    static func instantiate(reportType : PFReportType?, attachments : [String]?) -> PFFeedbackPopViewController {
        let storybardVc = UIStoryboard(name: "PFFeedback", bundle: nil).instantiateViewController(withIdentifier: "PFFeedback") as! PFFeedbackPopViewController
        storybardVc.attachments = attachments ?? [String]()
        storybardVc.reportType = reportType ?? .feedback
        return storybardVc
    }

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
        self.backgroundView.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.backgroundColor
        self.backgroundView.alpha = PopFeedback.shared.visualOptions.feedbackPopVisualOption.backgroundAlpha
        
        self.modelBackgroundView.layer.cornerRadius = 12.0
        self.modelBackgroundView.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.popupBackgroundColor
        
        if(self.reportType == .bug){
            self.titleLabel.text = "Bug Report"
        }else {
            self.titleLabel.text = "Feedback"
        }
        self.titleLabel.textColor = UIColor.black
        
        self.feedbackTextField.placeholder = PopFeedback.shared.visualOptions.feedbackPopVisualOption.messagePlaceholderText
        self.feedbackTextField.contentVerticalAlignment = .top
        self.feedbackTextField.contentHorizontalAlignment = .left
        self.feedbackView.layer.cornerRadius = 12.0
        
        self.submitButton.layer.cornerRadius = 8.0
        self.submitButton.setTitle(PopFeedback.shared.visualOptions.feedbackPopVisualOption.submitButtonText, for: .normal)
        self.submitButton.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.submitButtonBackgroundColor
        self.submitButton.setTitleColor(PopFeedback.shared.visualOptions.feedbackPopVisualOption.submitButtonTextColor, for: .normal)
        
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
