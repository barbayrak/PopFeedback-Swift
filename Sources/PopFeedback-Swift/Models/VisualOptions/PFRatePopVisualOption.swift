//
//  PFRatePopVisualOption.swift
//  
//
//  Created by CH Kaan Bayrak on 13/10/2022.
//

import Foundation
import UIKit

public struct PFRatePopVisualOption {
    
    let backgroundColor : UIColor = UIColor.black
    let backgroundAlpha : Double = 0.5
    let popupBackgroundColor : UIColor = UIColor(red: 177.0/255.0, green: 177.0/255.0, blue: 198.0/255.0, alpha: 1.0)
    let titleText : String = "How do you like the app?"
    let titleTextColor : UIColor = UIColor.black
    
    //Submit Button Attributes
    let submitButtonBackgroundColor : UIColor = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 232.0/255.0, alpha: 1.0)
    let submitButtonTextColor : UIColor = UIColor.white
    let submitButtonText : String = "Submit"
    
    //Message view attributes
    let messagePlaceholderText : String = "Place your feedback here ..."
    let messageBackgroundColor : UIColor = UIColor(red: 217.0/255.0, green: 217.0/255.0, blue: 217.0/255.0, alpha: 1.0)
    let messageTextColor : UIColor = UIColor.black
    
    //Rating Image attributes
    let rateActiveImage : UIImage = "iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAYAAAByDd+UAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAK3SURBVHgBpVa7bhNBFD2zWUtBSST7D5aSbimoEyNhRJW4o4v5AkJJFYcfAH8BpsUFdEgU2B0lawnR2oj0tmIix56ZvdzZ9RJ7H/auc+TrHe/MnDP3zMMDbAH5p3NkAlvAQkHMLztnBHQJonvzu3OGgigsCIiX4ZNgWThHQRQSnF9+dFnHYVEsolzU2mIZaqsRFigM8vlDJwUYCgoKdQyaAz6HnnJcc/nqtBBF3obzwXuXSP9gBf5ozs6E4jw5Sz2r3nvwupeHx0ZO+HLcEEQsEIlF4fOolbG1l4cnd4Y3v94MmNwxIkSrooL88RTifuXhu/FGQRo0y9PZHo9eleEr/LcseHJAmVaHrHJksolE4qIgOSQlPwT9gr6Kv8On4WEXhvvVb20x/dlsC4HTdBI/nKcloeU64rqgDH+pvV68T/Zh/pbNK+2QVl8mRTlL8qPyYtSIBqNXxG5FzUCi3+E24vk7tKEmF+TLt9yoHBLqBflyB70mUx2+j5GngOdXtIJFM/3+3CGad2mxKNaTRxauJY8tFAylEPVKzfNWVumk+7jJk3u+MkdYEAdZIJdATK6lrtGs1L1gBSe2xdXXRw0L8px3nIO7YSwgXu3XvPaKfFrL0RfXsXfoExddbANCX/nipPLMG8arMjf+qOuWbUkjbAGl+RBIETPIPLx3gTK2xS4yT5xMQSlxhC1RmqGBooICVOhvZxlk0XE2bwqmXddRkga4A1RJVCpVL2Ftaoab7ORR9iyBz+vaZNlqpRNm2jkmEvX9Wr+696RfhxBVFh+mNcyyNWFplp0mK6nFi/hyD/asTXwWI3G3SbM1kaFS5laWkGuZrNL2lnl3YLIlcRGvK8nkIJKCNrzIJnPoGtsOat7GC+/BU69pNvySxWOpk9eO7KPNhqP+wosO3bwwfXdKcPUEvbS+/wCAJvRXCJY1gwAAAABJRU5ErkJggg==".convertBase64StringToImage()
    let ratePassiveImage : UIImage = "iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAYAAAByDd+UAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAALXSURBVHgBrVbdcdpAEN47ewy8kQpCOnAqCDIFGCowriDwkOHHDxEPRpbzQFyB5QrsAkKkVAAdmHTAm1FmdJvdE8oIkIgOe2f0e3v37X57+0kAB5jj+HU+4ACTYGjj8bQjBfp8uHQPhmYMeCTFZ7oE+jgSX8HQjACvr/1TutQU4gMfgFA1pdYI8Ehiez0tKIfySQhYCsCmwRJmgARwTpdgMLAWXdtaIsJcSLgwWaMwYJrO5N0htBYGTNOZvDuE1sKAaTqTd2labduvFlnnmB0rFdVWCnInSCE+QUznaCcQKbqocFYp48xxpg97sBaDQcMTrvPDo1l7C8+0YYSj3rDxPWvcHftNkDjhoPatQ2zcCffm5zM/KBRWmq63NM0iMcCBSwIa0U2VpYooacMbG+/gNVg1UngnKSsvUuIjD1Kt7r+5vrFc5Znr+BNORD8IZpBquBnN1CZQBly8hmLKqkZA93Rb57qtQmHbtKM17q7ztK1BmYJIXA6H1hMY2O0tCQTGWRGFXc4qPS5yIwR8pC6tKaK7aKY8jwRiphT+RpDNrHmZjc+OJ6GwWLYkKgNxVkxhNQ8sF5BtVYqFQAkopCB6MRn7hiEsc31gT7T6rGThGia+lRPVBlNA2jisPourK2sOBW1NY0CTz/N8jrNecvFJiPSW3h7jPiVNbVN9l1Ji8KXX6KbHaewX73JWl6QVNhKBTIvpJEHw0kHcONM5LWgjZU7ayb3aYWmMA/y3pJ6TR2sm4Dadrutf8HaXUryPlGr1+2dWr9dosThofxpL/uD+R2tG42uVeE4UolICEgHsUFYBorjc3u5x76kJjTXpQ+xFKOkTprR4vKzEu21as2pYiyPBZaUMM35m8P7gLPMfdB1AK5FFCrYOSnYpSCiVdA97af8dSsshMI0LiDVVf7bywDaBGzb5fohXxUf+FKV/RxLLlTbOjBp4nrXT9pkuCcLpyx8Isub+BQ7sgmZetZZoAAAAAElFTkSuQmCC".convertBase64StringToImage()
    
}
