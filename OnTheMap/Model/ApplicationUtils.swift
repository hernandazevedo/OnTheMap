//
//  ApplicationUtils.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 04/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit

class ApplicationUtils {
    static func openUrl(url: String??) {
        let app = UIApplication.shared
        if let toOpen = url! {
            app.open(URL(string: toOpen)!, options: [:], completionHandler: nil)
        }
    }
    
    static func showError(viewController: UIViewController, title: String ,message: String) {
            let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            viewController.show(alertVC, sender: nil)
    }
}
