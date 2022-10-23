//
//  PFMiniPopViewController.swift
//  
//
//  Created by CH Kaan Bayrak on 18/10/2022.
//

import UIKit

class PFMiniPopViewController: UIViewController {

    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var modelBackgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bugReportButton: UIButton!
    @IBOutlet weak var bugReportLabel: UILabel!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var feedbackButton: UIButton!
    
    static func instantiate() -> PFMiniPopViewController {
        return UIStoryboard(name: "PFMiniPop", bundle: nil).instantiateViewController(withIdentifier: "PFMiniPop") as! PFMiniPopViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func bugReportTapped(_ sender: Any) {
        
    }
    
    @IBAction func feedbackTapped(_ sender: Any) {
        
    }

}

extension PFMiniPopViewController {
    
    func setupUI(){
        self.backgroundView.backgroundColor = PopFeedback.shared.visualOptions.miniPopVisualOption.backgroundColor
        self.backgroundView.alpha = PopFeedback.shared.visualOptions.miniPopVisualOption.backgroundAlpha
        
        self.titleLabel.text = PopFeedback.shared.visualOptions.miniPopVisualOption.titleText
        self.titleLabel.textColor = PopFeedback.shared.visualOptions.miniPopVisualOption.titleTextColor
        
        self.bugReportButton.backgroundColor = PopFeedback.shared.visualOptions.miniPopVisualOption.bugReportButtonBackgroundColor
        self.bugReportButton.setBackgroundImage(PopFeedback.shared.visualOptions.miniPopVisualOption.bugReportButtonImage, for: .normal)
        self.bugReportButton.layer.cornerRadius = 28.0
        self.bugReportButton.clipsToBounds = true
        self.bugReportLabel.text = PopFeedback.shared.visualOptions.miniPopVisualOption.bugReportButtonText
        self.bugReportLabel.textColor = PopFeedback.shared.visualOptions.miniPopVisualOption.bugReportButtonTextColor
        
        self.feedbackButton.backgroundColor = PopFeedback.shared.visualOptions.miniPopVisualOption.feedbackButtonBackgroundColor
        self.feedbackButton.setBackgroundImage(PopFeedback.shared.visualOptions.miniPopVisualOption.feedbackButtonImage, for: .normal)
        self.feedbackButton.layer.cornerRadius = 28.0
        self.feedbackButton.clipsToBounds = true
        self.feedbackLabel.text = PopFeedback.shared.visualOptions.miniPopVisualOption.feedbackButtonText
        self.feedbackLabel.textColor = PopFeedback.shared.visualOptions.miniPopVisualOption.feedbackButtonTextColor
    }
    
}
