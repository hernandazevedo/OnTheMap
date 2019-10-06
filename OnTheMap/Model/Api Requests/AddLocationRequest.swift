//
//  AddLocationRequest.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 06/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import Foundation

struct AddLocationRequest: Codable {
    let uniqueKey: String
    let firstName: String
    let lastName: String
    let mapString: String
    let mediaURL: String
    let latitude: Double
    let longitude: Double
}
