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
        
    }
    
}

extension PFRatePopViewController {
    
    func setupUI(){
        self.titleLabel.text = "How do you like the app ?"
        self.titleLabel.textColor = UIColor.black
        self.submitButton.layer.cornerRadius = 8.0
        self.submitButton.setTitle("Submit", for: .normal)
        self.submitButton.backgroundColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 232.0/255.0, alpha: 1.0)
        self.modelBackgroundView.layer.cornerRadius = 12.0
        self.modelBackgroundView.backgroundColor = UIColor(red: 177.0/255.0, green: 177.0/255.0, blue: 198.0/255.0, alpha: 1.0)
        self.backgroundView.backgroundColor = UIColor.black
        self.backgroundView.alpha = 0.5
        self.setupRateViews()
    }
    
    func setupRateViews(){
        
    }
    
}
