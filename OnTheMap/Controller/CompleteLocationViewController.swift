//
//  CompleteLocationViewController.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 01/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit
import MapKit
class CompleteLocationViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let annotation = MKPointAnnotation()
        let coordinate = CLLocationCoordinate2D(latitude: 35.1740471, longitude: -79.3922539)
        annotation.coordinate = coordinate
        annotation.title = "Southern Pines, NC"
        self.mapView.addAnnotation(annotation)

        self.mapView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.mapView.showAnnotations(mapView.annotations, animated: true)
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

extension CompleteLocationViewController : MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let reuseId = "pin"
        
        var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKPinAnnotationView
        
        if pinView == nil {
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
            pinView!.canShowCallout = true
            pinView!.pinTintColor = .red
            pinView!.rightCalloutAccessoryView = UIButton(type: .roundedRect)
        }
        else {
            pinView!.annotation = annotation
        }
        
        return pinView
    }
    
}
