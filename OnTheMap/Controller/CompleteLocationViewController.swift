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
    
    
    @IBAction func backNavigationClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func navigateToTabBarViewController() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
