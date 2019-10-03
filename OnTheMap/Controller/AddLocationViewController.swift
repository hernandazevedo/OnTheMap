//
//  SelectLocationViewController.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 01/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cancelNavigationClicked(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
