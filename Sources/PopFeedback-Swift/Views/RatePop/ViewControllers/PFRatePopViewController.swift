//
//  PFRatePopViewController.swift
//  
//
//  Created by CH Kaan Bayrak on 18/10/2022.
//

import UIKit

class PFRatePopViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var modelBackgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var rate1Button: UIButton!
    @IBOutlet weak var rate2Button: UIButton!
    @IBOutlet weak var rate3Button: UIButton!
    @IBOutlet weak var rate4Button: UIButton!
    @IBOutlet weak var rate5Button: UIButton!
    @IBOutlet weak var feedbackView: UIView!
    @IBOutlet weak var feedbackTextField: UITextField!
    
    var rating = 3.0
    
    static func instantiate() -> PFRatePopViewController {
        return UIStoryboard(name: "PFRatePop", bundle: Bundle.module).instantiateViewController(withIdentifier: "PFRatePop") as! PFRatePopViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        var feedback = PFReport(environment: PopFeedback.shared.environment, type: .rate, message: (feedbackTextField.text ?? ""))
        feedback.rating = self.rating
        PFFeedbackService().sendFeedback(feedback: feedback)
        
        let alert = UIAlertController(title: nil, message: "Rating sent successfully", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default,handler: { aa in
            self.dismiss(animated: false)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func rate1Tapped(_ sender: Any) {
        self.rating = 1.0
        self.changeRate(rate: 1)
    }
    
    @IBAction func rate2Tapped(_ sender: Any) {
        self.rating = 2.0
        self.changeRate(rate: 2)
    }
    
    @IBAction func rate3Tapped(_ sender: Any) {
        self.rating = 3.0
        self.changeRate(rate: 3)
    }
    
    @IBAction func rate4Tapped(_ sender: Any) {
        self.rating = 4.0
        self.changeRate(rate: 4)
    }
    
    @IBAction func rate5Tapped(_ sender: Any) {
        self.rating = 5.0
        self.changeRate(rate: 5)
    }
    
    func changeRate(rate : Int){
        self.resetRateViews()
        
        switch(rate){
        case 1:
            rate1Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
        case 2:
            rate1Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate2Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
        case 3:
            rate1Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate2Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate3Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
        case 4:
            rate1Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate2Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate3Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate4Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
        case 5:
            rate1Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate2Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate3Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate4Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
            rate5Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.rateActiveImage, for: .normal)
        default:
            break
        }
    }
    
}

extension PFRatePopViewController {
    
    func setupUI(){
        self.backgroundView.backgroundColor = PopFeedback.shared.visualOptions.ratePopVisualOption.backgroundColor
        self.backgroundView.alpha = PopFeedback.shared.visualOptions.ratePopVisualOption.backgroundAlpha
        
        self.modelBackgroundView.layer.cornerRadius = 12.0
        self.modelBackgroundView.backgroundColor = PopFeedback.shared.visualOptions.ratePopVisualOption.popupBackgroundColor
        
        self.titleLabel.text = PopFeedback.shared.visualOptions.ratePopVisualOption.titleText
        self.titleLabel.textColor = PopFeedback.shared.visualOptions.ratePopVisualOption.titleTextColor
        
        self.submitButton.layer.cornerRadius = 8.0
        self.submitButton.setTitle(PopFeedback.shared.visualOptions.ratePopVisualOption.submitButtonText, for: .normal)
        self.submitButton.setTitleColor(PopFeedback.shared.visualOptions.ratePopVisualOption.submitButtonTextColor, for: .normal)
        self.submitButton.backgroundColor = PopFeedback.shared.visualOptions.ratePopVisualOption.submitButtonBackgroundColor
        
        self.backgroundView.gestureRecognizers = []
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.closePopup))
        self.backgroundView.addGestureRecognizer(tap)
        
        self.feedbackTextField.placeholder = PopFeedback.shared.visualOptions.ratePopVisualOption.messagePlaceholderText
        self.feedbackTextField.contentVerticalAlignment = .top
        self.feedbackTextField.contentHorizontalAlignment = .left
        self.feedbackView.layer.cornerRadius = 6.0
        
        self.setupRateViews()
    }
    
    func setupRateViews(){
        self.changeRate(rate: 3)
    }
    
    func resetRateViews(){
        rate1Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.ratePassiveImage, for: .normal)
        rate2Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.ratePassiveImage, for: .normal)
        rate3Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.ratePassiveImage, for: .normal)
        rate4Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.ratePassiveImage, for: .normal)
        rate5Button.setBackgroundImage(PopFeedback.shared.visualOptions.ratePopVisualOption.ratePassiveImage, for: .normal)
    }
    
    @objc func closePopup(){
        self.dismiss(animated: false)
    }
    
}
