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
        let storybardVc = UIStoryboard(name: "PFFeedback", bundle: Bundle.module).instantiateViewController(withIdentifier: "PFFeedback") as! PFFeedbackPopViewController
        storybardVc.attachments = attachments ?? [String]()
        storybardVc.reportType = reportType ?? .feedback
        return storybardVc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.attachmentsCollectionView.reloadData()
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        var feedback = PFReport(environment: PopFeedback.shared.environment, type: self.reportType, message: (self.feedbackTextField.text ?? ""))
        feedback.images = self.attachments
        PFFeedbackService().sendFeedback(feedback: feedback)
    }
    
    func newAttachmentAddTapped(){
        let actionSheetController = UIAlertController(title: "Choose source", message: "", preferredStyle: .actionSheet)
        let takePictureAction = UIAlertAction(title: "Camera", style: .default) { action -> Void in
            self.takeFrom(camera: true, editing: false)
        }
        let choosePictureAction = UIAlertAction(title: "Photo Library", style: .default) { action -> Void in
            self.takeFrom(camera: false, editing: false)
        }
        actionSheetController.addAction(takePictureAction)
        actionSheetController.addAction(choosePictureAction)
        actionSheetController.popoverPresentationController?.sourceView = self.view
        self.present(actionSheetController, animated: true)
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
        self.feedbackView.layer.cornerRadius = 6.0
        
        self.submitButton.layer.cornerRadius = 8.0
        self.submitButton.setTitle(PopFeedback.shared.visualOptions.feedbackPopVisualOption.submitButtonText, for: .normal)
        self.submitButton.backgroundColor = PopFeedback.shared.visualOptions.feedbackPopVisualOption.submitButtonBackgroundColor
        self.submitButton.setTitleColor(PopFeedback.shared.visualOptions.feedbackPopVisualOption.submitButtonTextColor, for: .normal)
        
        self.backgroundView.gestureRecognizers = []
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.closePopup))
        self.backgroundView.addGestureRecognizer(tap)
        
        self.setupAttachments()
    }
    
    func setupAttachments(){
        self.attachmentViewModels.removeAll()
        for attachment in self.attachments {
            self.attachmentViewModels.append(PFAttachmentViewModel(image: attachment.convertBase64StringToImage()))
        }
        self.attachmentViewModels.append(PFAttachmentAddViewModel())
        self.attachmentsCollectionView.reloadData()
    }
    
    @objc func closePopup(){
        self.dismiss(animated: false)
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
        let model = self.attachmentViewModels[indexPath.row]
        let reusableView = collectionView.dequeueReusableCell(withReuseIdentifier: model.reuseIdentifier, for: indexPath)
        model.setup(reusableView, in: collectionView, at: indexPath)
        return reusableView
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(attachmentViewModels[indexPath.row] is PFAttachmentAddViewModel){
            self.newAttachmentAddTapped()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 36.0, height: 36.0)
    }
    
}

extension PFFeedbackPopViewController : UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    private func takeFrom(camera: Bool, editing: Bool) {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = editing
        imagePicker.sourceType = camera ? .camera : .photoLibrary
        imagePicker.delegate = self
        if(!camera){
            imagePicker.mediaTypes = ["public.image"]
        }
        present(imagePicker, animated: true, completion: nil)
    }
        
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if(info[UIImagePickerController.InfoKey.mediaType] as! String == "public.image"){
            if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                DispatchQueue.main.async {
                    self.attachments.append(pickedImage.convertImageToBase64String())
                    self.setupAttachments()
                }
            }
        }
        dismiss(animated: true, completion: nil)
    }
        
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}

