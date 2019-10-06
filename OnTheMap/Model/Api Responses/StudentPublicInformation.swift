//
//  StudentPublicInformation.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 06/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import Foundation
struct StudentPublicInformation: Codable {
    let lastName: String
    let firstName: String
    
    enum CodingKeys: String, CodingKey {
        case lastName = "last_name"
        case firstName = "first_name"
    }
}
