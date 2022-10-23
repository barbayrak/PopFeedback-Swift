//
//  PFScreenshotPopViewController.swift
//  
//
//  Created by CH Kaan Bayrak on 18/10/2022.
//

import UIKit

class PFScreenshotPopViewController: UIViewController {
    
    @IBOutlet weak var screenshotImageView: UIImageView!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var bugReportButton: UIButton!
    @IBOutlet weak var bugReportLabel: UILabel!
    @IBOutlet weak var feedbackButton: UIButton!
    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var shareLabel: UILabel!
    
    var screenshotImage = UIImage()
    
    static func instantiate(screenshotImage : UIImage) -> PFScreenshotPopViewController {
        let screenshotVc = UIStoryboard(name: "PFScreenshotPop", bundle: Bundle.module).instantiateViewController(withIdentifier: "PFScreenshotPop") as! PFScreenshotPopViewController
        screenshotVc.screenshotImage = screenshotImage
        return screenshotVc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
}

extension PFScreenshotPopViewController {
    
    func setupUI(){
        self.screenshotImageView.image = self.screenshotImage
        self.screenshotImageView.contentMode = .scaleAspectFill
        self.screenshotImageView.layer.cornerRadius = 12.0
        self.screenshotImageView.clipsToBounds = true
        
        self.backgroundView.backgroundColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.popupBackgroundColor
        
        self.bugReportButton.backgroundColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.bugReportButtonBackgroundColor
        self.bugReportButton.setImage(PopFeedback.shared.visualOptions.screenshotPopVisualOption.bugReportButtonImage, for: .normal)
        self.bugReportButton.tintColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.bugReportButtonImageTintColor
        self.bugReportButton.layer.cornerRadius = 28.0
        self.bugReportButton.clipsToBounds = true
        self.bugReportLabel.text = PopFeedback.shared.visualOptions.screenshotPopVisualOption.bugReportButtonText
        self.bugReportLabel.textColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.bugReportButtonTextColor
        
        self.feedbackButton.backgroundColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.feedbackButtonBackgroundColor
        self.feedbackButton.setImage(PopFeedback.shared.visualOptions.screenshotPopVisualOption.feedbackButtonImage, for: .normal)
        self.feedbackButton.tintColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.feedbackButtonImageTintColor
        self.feedbackButton.layer.cornerRadius = 28.0
        self.feedbackButton.clipsToBounds = true
        self.feedbackLabel.text = PopFeedback.shared.visualOptions.screenshotPopVisualOption.feedbackButtonText
        self.feedbackLabel.textColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.feedbackButtonTextColor
        
        self.shareButton.backgroundColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.shareButtonBackgroundColor
        self.shareButton.setImage(PopFeedback.shared.visualOptions.screenshotPopVisualOption.shareButtonImage, for: .normal)
        self.shareButton.tintColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.shareButtonImageTintColor
        self.shareButton.layer.cornerRadius = 28.0
        self.shareButton.clipsToBounds = true
        self.shareLabel.text = PopFeedback.shared.visualOptions.screenshotPopVisualOption.shareButtonText
        self.shareLabel.textColor = PopFeedback.shared.visualOptions.screenshotPopVisualOption.shareButtonTextColor
        
    }
    
}
