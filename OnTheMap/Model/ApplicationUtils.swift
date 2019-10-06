//
//  ApplicationUtils.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 04/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit

class ApplicationUtils {
    fileprivate static func fixUrlHttp(_ toOpen: inout String) {
        if !toOpen.contains("http") {
            toOpen = "http://" + toOpen
        }
    }
    
    static func openUrl(viewController: UIViewController, url: String??) {
        let app = UIApplication.shared
        let emptyString = "Cannot open empty url"
        guard var toOpen = url! else {
            ApplicationUtils.showError(viewController: viewController, title: "Url Error", message: emptyString)
            return
        }
        
        toOpen = toOpen.trimmingCharacters(in: NSCharacterSet.whitespaces)
        if (toOpen != "" && toOpen != "nil") {
            fixUrlHttp(&toOpen)
            app.open(URL(string: toOpen)!, options: [:], completionHandler: nil)
        } else {
            ApplicationUtils.showError(viewController: viewController, title: "Url Error", message: emptyString)
        }
    }
    
    static func showError(viewController: UIViewController, title: String, message: String) {
            let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            viewController.present(alertVC, animated: true, completion: nil)
    }
    
    static func showYesCancelWithCompletion(viewController: UIViewController, title: String, message: String, completion: @escaping (Bool) -> Void) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "YES", style: .default, handler: { (alert) in
            DispatchQueue.main.async {
                completion(true)
            }
        }))
        alertVC.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: nil))
        viewController.present(alertVC, animated: true, completion: nil)
    }
}
