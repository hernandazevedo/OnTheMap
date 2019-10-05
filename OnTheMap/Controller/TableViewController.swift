//
//  TableViewController.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 01/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    private func navigateToAddLocationViewController() {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "AddLocationViewController") {
            self.navigationController?.show(vc, sender: nil)
        }
    }
    
    @IBAction func refreshClicked(_ sender: Any) {
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        ApiClient.logout(completion: handleLogoutResponse(success:error:))
    }
    
    func handleLogoutResponse(success: Bool, error: Error?) {
        if (success) {
            self.dismiss(animated: true, completion: nil)
        } else {
            ApplicationUtils.showError(viewController: self, title: "Logout Error", message: error?.localizedDescription ?? "")
        }
    }
    
    @IBAction func AddLocationClicked(_ sender: Any) {
        navigateToAddLocationViewController()
    }
}
