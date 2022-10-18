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
    var visualOptions : PFFeedbackPopVisualOption = PFFeedbackPopVisualOption()
    var customAttributes : [String:String] = [:]
    
    //public func configure(environment: PFEnvironment = .sandbox,fireEvents : [PFFireEvent] = [],integrations : [PFIntegration], visualOptions: PFFeedbackPopVisualOption = PFFeedbackPopVisualOption(), customAttributes: [String : String] = [:]) {
    public func configure(environment: PFEnvironment,fireEvents : [PFFireEvent],integrations : [PFIntegration], customAttributes: [String : String]?) {
        self.environment = environment
        self.fireEvents = fireEvents
        self.integrations = integrations
        //self.visualOptions = visualOptions
        self.customAttributes = customAttributes ?? [:]
        self.configureFireEvents()
    }
    
    func configureFireEvents(){
        
        if(self.fireEvents.contains(PFFireEvent.afterScreenshot)){
            NotificationCenter.default.addObserver(forName: UIApplication.userDidTakeScreenshotNotification, object: nil, queue: OperationQueue.main) { notification in
                
            }
        }
        
        if(self.fireEvents.contains(PFFireEvent.afterShake)){
           
        }
        
    }
    
}
