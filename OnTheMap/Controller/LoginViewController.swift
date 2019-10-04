//
//  ViewController.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 29/09/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: RoundedButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBAction func signUpClicked(_ sender: Any) {
        ApplicationUtils.openUrl(url: Constants.signUpUrl)
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        
        // Login success
        performSegue(withIdentifier: "loginSegue", sender: nil)

    }
    
    func setLoggingIn(_ loggingIn: Bool) {
        if loggingIn {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
        emailTextField.isEnabled = !loggingIn
        passwordTextField.isEnabled = !loggingIn
        loginButton.isEnabled = !loggingIn
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }


}

