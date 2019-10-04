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
        
        ApiClient.login(username: emailTextField.text ?? "", password: passwordTextField.text ?? "", completion: handleLoginResponse(success:error:))
    }
    
    func handleLoginResponse(success: Bool, error: Error?) {
        setLoggingIn(false)
        if success {
            // Login success
            performSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            ApplicationUtils.showError(viewController: self, title: "Login Error", message: error?.localizedDescription ?? "")
        }
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

