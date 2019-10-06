//
//  SelectLocationViewController.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 01/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit
import CoreLocation

class AddLocationViewController: UIViewController {

    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var findLocationButton: RoundedButton!
    @IBOutlet weak var linkTextField: UITextField!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    var placemark: CLPlacemark?
    
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
    
    
    @IBAction func findLocationClicked(_ sender: Any) {
        
        if isValidFields() {
            setLoading(true)
            CLGeocoder().geocodeAddressString((locationTextField.text)!) { (placemarks, error) in
                guard let placemarks = placemarks else {
                    DispatchQueue.main.async {
                        self.setLoading(false)
                        ApplicationUtils.showError(viewController: self, title: "Geocode Error", message: "Error finding location!")
                    }
                    return
                }
                self.placemark = placemarks.first
                DispatchQueue.main.async {
                    self.setLoading(false)
                    self.performSegue(withIdentifier: "completeLocationSegue", sender: self)
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "completeLocationSegue" {
            let vc = segue.destination as! CompleteLocationViewController
            vc.placemark = placemark
            vc.mediaUrl = linkTextField.text
            vc.locationText = locationTextField.text
        }
    }
    
    func isValidFields() -> Bool {
        if locationTextField.text == "" {
            ApplicationUtils.showError(viewController: self, title: "Validation error", message: "Location cannot be empty")
            return false
        } else if linkTextField.text == "" {
            ApplicationUtils.showError(viewController: self, title: "Validation error", message: "Link cannot be empty")
            return false
        } else {
            return true
        }
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
