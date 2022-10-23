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
        let rootVc = UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController
        let vc = PFMiniPopViewController.instantiate()
        vc.modalPresentationStyle = .overCurrentContext
        rootVc?.top?.present(vc, animated: false)
    }
    
    public func showRatePopup(){
        let rootVc = UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController
        let vc = PFRatePopViewController.instantiate()
        vc.modalPresentationStyle = .overCurrentContext
        rootVc?.top?.present(vc, animated: false)
    }
    
    
    
}


// Private functions
extension PopFeedback {
    
    private func configureFireEvents(){
        self.resetObservers()
        
        if(self.fireEvents.contains(PFFireEvent.afterScreenshot)){
            NotificationCenter.default.addObserver(self, selector: #selector(self.showAfterScreenshot), name: UIApplication.userDidTakeScreenshotNotification, object: nil)
        }
        
        if(self.fireEvents.contains(PFFireEvent.afterShake)){
            NotificationCenter.default.addObserver(self, selector: #selector(self.showAfterShake), name: Notification.Name("PFDeviceShakeDetected"), object: nil)
        }
        
    }
    
    private func resetObservers(){
        NotificationCenter.default.removeObserver(self, name: UIApplication.userDidTakeScreenshotNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: Notification.Name("PFDeviceShakeDetected"), object: nil)
    }
    
    @objc private func showAfterScreenshot(){
        let rootVc = UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController
        let ss = rootVc?.top?.view.snapshot() ?? UIImage()
        let vc = PFScreenshotPopViewController.instantiate(screenshotImage: ss)
        vc.modalPresentationStyle = .overCurrentContext
        rootVc?.top?.present(vc, animated: false)
    }
    
    @objc private func showAfterShake(){
        let rootVc = UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController
        let vc = PFMiniPopViewController.instantiate()
        vc.modalPresentationStyle = .overCurrentContext
        rootVc?.top?.present(vc, animated: false)
    }
    
    private func showFeedbackPopupWithParameters(reportType : PFReportType,attachments : [String]){
        let rootVc = UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController
        let vc = PFFeedbackPopViewController.instantiate(reportType: reportType, attachments: attachments)
        vc.modalPresentationStyle = .overCurrentContext
        rootVc?.top?.present(vc, animated: false)
    }
    
}

