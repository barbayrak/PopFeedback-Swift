//
//  File.swift
//  
//
//  Created by CH Kaan Bayrak on 13/10/2022.
//

import Foundation

public struct PFReport {
    
    var environment : PFEnvironment
    var type : PFReportType
    var message : String
    var rating : Double?
    var images : [String]?
    var deviceInfo : [String:String]?
    var customAttributes : [String:String]?
    
}
