//
//  File.swift
//  
//
//  Created by CH Kaan Bayrak on 18/10/2022.
//

import Foundation
import UIKit

struct PFFeedbackService {
    
    var urlSession = URLSession.shared

    func sendFeedback(feedback : PFReport) {
        for integration in PopFeedback.shared.integrations {
            if(verifyUrl(urlString: integration.url)){
                sendPostRequest(url: integration.url, feedback: feedback,headers: integration.customHeaders)
            }else{
                print("Integration URL is not valid : \(integration.url)")
            }
        }
    }
    
    func sendPostRequest(url: String, feedback : PFReport, headers :[String:String]){
        var feedbackObject = feedback
        feedbackObject.deviceInfo = getDeviceInfoDictionary()
        feedbackObject.customAttributes = getCustomAttributes()
        
        var request = URLRequest(url: URL(string: url)!)
        do{
            let jsonData = try JSONEncoder().encode(feedback)
            request.httpMethod = "POST"
            request.httpBody = jsonData
            request.allHTTPHeaderFields = headers
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            let task = urlSession.dataTask(
                with: request,
                completionHandler: { data, response, error in
                    // Validate response and call handler
                    print(data)
                }
            )
            task.resume()
        } catch {
            print(error)
        }
    }
    
    func getDeviceInfoDictionary() -> [String:String] {
        var deviceInfo = [String:String]()
        deviceInfo["deviceOsType"] = "iOS"
        deviceInfo["appVersion"] = (Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) ?? ""
        deviceInfo["appPackageName"] = Bundle.main.bundleIdentifier
        deviceInfo["deviceModel"] = UIDevice.current.model
        deviceInfo["deviceLocale"] = Locale.current.languageCode
        return deviceInfo
    }
    
    func getCustomAttributes() -> [String:String] {
        return PopFeedback.shared.customAttributes
    }
    
    func verifyUrl (urlString: String?) -> Bool {
        if let urlString = urlString {
            if let url = NSURL(string: urlString) {
                return UIApplication.shared.canOpenURL(url as URL)
            }
        }
        return false
    }
    
}
