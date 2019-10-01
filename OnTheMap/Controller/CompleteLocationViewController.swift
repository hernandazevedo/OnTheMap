//
//  CompleteLocationViewController.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 01/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit
class CompleteLocationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func finishClicked(_ sender: Any) {
        navigateToTabBarViewController()
    }
    
    func navigateToTabBarViewController() {
        if let tabBarController = self.navigationController?.viewControllers[1] as? UITabBarController {
            self.navigationController?.popToViewController(tabBarController, animated: true)
        }
    }
}
