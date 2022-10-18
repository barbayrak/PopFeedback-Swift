//
//  PFJiraIntegration.swift
//  
//
//  Created by CH Kaan Bayrak on 13/10/2022.
//

import Foundation

public class PFJiraIntegration : PFIntegration {
    
    init(invocationUrl : String,headers : [String:String]?){
        super.init()
        super.url = invocationUrl
        super.customHeaders = headers ?? [String:String]()
    }
    
}
