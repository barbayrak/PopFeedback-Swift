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
    
    static func instantiate() -> PFRatePopViewController {
        return UIStoryboard(name: "PFRatePop", bundle: nil).instantiateViewController(withIdentifier: "PFRatePop") as! PFRatePopViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        
    }
    
    @IBAction func rate1Tapped(_ sender: Any) {
        self.changeRate(rate: 1)
    }
    
    @IBAction func rate2Tapped(_ sender: Any) {
        self.changeRate(rate: 2)
    }
    
    @IBAction func rate3Tapped(_ sender: Any) {
        self.changeRate(rate: 3)
    }
    
    @IBAction func rate4Tapped(_ sender: Any) {
        self.changeRate(rate: 4)
    }
    
    @IBAction func rate5Tapped(_ sender: Any) {
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
    
}
