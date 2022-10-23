//
//  PFMiniPopVisualOption.swift
//  
//
//  Created by CH Kaan Bayrak on 13/10/2022.
//

import Foundation
import UIKit

public struct PFMiniPopVisualOption {
    
    let backgroundColor : UIColor = UIColor.black
    let backgroundAlpha : Double = 0.5
    let popupBackgroundColor : UIColor = UIColor(red: 177.0/255.0, green: 177.0/255.0, blue: 198.0/255.0, alpha: 1.0)
    let titleText : String = "Is there anything you want to share with us?"
    let titleTextColor : UIColor = UIColor.black
    
    //Bug Report Button
    let bugReportButtonBackgroundColor : UIColor = UIColor.white
    let bugReportButtonImage : UIImage = "iVBORw0KGgoAAAANSUhEUgAAACAAAAAdCAYAAADLnm6HAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAHPSURBVHgBvVftUcJAEH04/jcdsB1IB14JWAGxArECYwXQgbECtAJiBWIFxg6wAt2d2wxHvFxyIeHNvIH72Owju7d7AP2QMY0znjHXOCMS5tYZy3dCD1ziNGxVzB5nxEIdG3UunDN3+jkqiLkJrIuwGUZEW6wJx7nRCl8OGOYN88mzVr3uaxyE/DCvYPPgDc14ZL4zC3RApgau4xXsr1vquA5ipsyvmm3lPEMkMjUk5gfiEizFIVy9nFdYq3NCPEhtV+gJwgkFpvaMBD2Qo9150mGPQeDoXgSMfpklwpjjuCf4UMCeFBMjIIX/GPZFjoYkbhJAaP/1MShga0cnAQa2rg+NT3jyxSdAEqvE8Cjh6RNSinPm1JkjDBv/ClKqpSbcu3MiIK1tTDEO5M0+MF/dSV8IJP5jtFSCJ7Q+AbJpiuEhp2DXRYDEqrrpDAVCQ2I31QFJwiWGQ8Z8QYSAAvZSMkQuEGxZLxAJQnsnSxE+NYSWjnoRMC5hk6ZvSybYLlgiUNhCAuQmI13slvmMuPpg1OaO+Y3/V7RWAWIwgU2eUh9kYN9GCn9YEl3b6F4RvtNnTNAgYgK/egP/PY50beGM9w7l1pvD/08pg03Ewp38A+R8Xe0KqnUYAAAAAElFTkSuQmCC".convertBase64StringToImage()
    let bugReportButtonImageTintColor : UIColor = UIColor.black
    let bugReportButtonTextColor : UIColor = UIColor.black
    let bugReportButtonText : String = "Bug Report"
    
    //Feedback Button Attributes
    let feedbackButtonBackgroundColor : UIColor = UIColor.white
    let feedbackButtonImage : UIImage = "iVBORw0KGgoAAAANSUhEUgAAABwAAAAYCAYAAADpnJ2CAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAFnSURBVHgB1VWBTcMwELxGDJARzASECTAbdIQwAWUCOgJMQDoBZYJ2g9AJkg3SDcpf/SVFwo5BcaSedGqSXv7+P6834JALn4Wd8DAyG419xExohBvhp/BV2GJcGOGbxr3ng0ofpAQ7WAtL3rDkAulRCtcZXMl7j+hRE9qozodCNeTco2mFN1kgiBEuhE/CHcJtf1fNh+rygPY4SeaX5yVc3wlW0MGf2OHsvvPEs8LmCn6s4caZ2V8LVx5dK9xqcntlG4jrrRDo2zrHMErV+tpp4eYhaDgmLA0zTIyLNsxjRDGGS7gJNAGNUU3McEUNzQv6rX9ag6zIoj9lFgMxLP44pXyhws8jrNFkYt+veTxx/600WEpU0I3EvjNTg3Swama42rjCCjXlNZcw23Q6Qfithr5PCHca/0HYzs7+MHDVcghu4fYhzbaazA7/AxOv4D8Cv9tr9LpCYtDE6u8SE4BG3VRmRJ3S7Asjnm6lujYZ7gAAAABJRU5ErkJggg==".convertBase64StringToImage()
    let feedbackButtonImageTintColor : UIColor = UIColor.black
    let feedbackButtonTextColor : UIColor = UIColor.black
    let feedbackButtonText : String = "Feedback"
    
}
