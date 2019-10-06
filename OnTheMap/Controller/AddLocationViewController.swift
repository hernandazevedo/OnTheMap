//
//  SelectLocationViewController.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 01/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {

    @IBOutlet weak var findLocationButton: RoundedButton!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLoading(true)
        ApiClient.getUserData(completion: handleUserDataResponse(success:error:))
    }
    
    private func setLoading(_ loading: Bool) {
        if loading {
            self.activityIndicatorView.startAnimating()
        } else {
            self.activityIndicatorView.stopAnimating()
        }
        
        findLocationButton.isEnabled = !loading
    }
    
    func handleUserDataResponse(success: Bool, error: Error?) {
        setLoading(false)
        if error != nil {
            ApplicationUtils.showError(viewController: self, title: "User data error", message: "Could not get public user data!")
        }
    }

    @IBAction func cancelNavigationClicked(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
