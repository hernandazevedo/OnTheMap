//
//  ViewController.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 29/09/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func loginClicked(_ sender: Any) {
        
        //mock sucess of login
        performSegue(withIdentifier: "loginSegue", sender: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }


}

