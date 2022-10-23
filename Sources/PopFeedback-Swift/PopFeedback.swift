//
//  PopFeedback.swift
//  
//
//  Created by CH Kaan Bayrak on 13/10/2022.
//

import Foundation
import UIKit

public class PopFeedback {
    
    public static let shared = PopFeedback()
    
    var environment : PFEnvironment = .sandbox
    var fireEvents : [PFFireEvent] = []
    var integrations : [PFIntegration] = []
    var visualOptions : PFVisualOption = PFVisualOption()
    var customAttributes : [String:String] = [:]
    
    public func configure(environment: PFEnvironment,fireEvents : [PFFireEvent],integrations : [PFIntegration],customAttributes: [String : String]?) {
        self.environment = environment
        self.fireEvents = fireEvents
        self.integrations = integrations
        self.customAttributes = customAttributes ?? [:]
        self.configureFireEvents()
    }
    
    public func setFireEvents(fireEvents : [PFFireEvent]){
        self.fireEvents = fireEvents
        self.configureFireEvents()
    }
    
    public func setIntegrations(integrations : [PFIntegration]){
        self.integrations = integrations
    }
    
    public func setVisualOptions(visualOptions : PFVisualOption){
        self.visualOptions = visualOptions
    }
    
    public func setCustomAttributes(attributes : [String:String]){
        self.customAttributes = attributes
    }
    
    public func addCustomAttribute(attributes : [String:String]){
        for kV in attributes {
            self.customAttributes[kV.key] = kV.value
        }
    }
    
    public func showFeedbackPopup(){
        let topView = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        let vc = PFMiniPopViewController.instantiate()
        topView?.addSubview(vc.view)
    }
    
    public func showRatePopup(){
        let topView = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        let vc = PFRatePopViewController.instantiate()
        topView?.addSubview(vc.view)
    }
    
}


// Private functions
extension PopFeedback {
    
    private func configureFireEvents(){
        self.resetObservers()
        
        if(self.fireEvents.contains(PFFireEvent.afterScreenshot)){
            NotificationCenter.default.addObserver(self, selector: #selector(self.showScreenshotPopup), name: UIApplication.userDidTakeScreenshotNotification, object: nil)
        }
        
        if(self.fireEvents.contains(PFFireEvent.afterShake)){
            
        }
        
    }
    
    private func resetObservers(){
        NotificationCenter.default.removeObserver(self, name: UIApplication.userDidTakeScreenshotNotification, object: nil)
    }
    
    @objc private func showScreenshotPopup(){
        let topView = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        let ss = topView?.snapshot() ?? UIImage()
        let vc = PFScreenshotPopViewController.instantiate(screenshotImage: ss)
        topView?.addSubview(vc.view)
    }
    
    private func showShakePopup(){
        let topView = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        let vc = PFMiniPopViewController.instantiate()
        topView?.addSubview(vc.view)
    }
    
    private func showFeedbackPopupWithParameters(reportType : PFReportType,attachments : [String]){
        let topView = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        let vc = PFFeedbackPopViewController.instantiate(reportType: reportType, attachments: attachments)
        topView?.addSubview(vc.view)
    }
    
}

