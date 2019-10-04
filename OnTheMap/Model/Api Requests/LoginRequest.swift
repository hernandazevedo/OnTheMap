//
//  LoginRequest.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 04/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import Foundation
/*
 Codable struct for login
 {"udacity": {"username": "user@email.com", "password": "password"}}
 */
struct LoginRequest: Codable {
    let udacity: Udacity
    
    enum CodingKeys: String, CodingKey {
        case udacity
    }
    
    struct Udacity: Codable {
        let username: String
        let password: String
    }
}
