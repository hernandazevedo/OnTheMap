//
//  SessionResponse.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 04/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import Foundation

/*
 Codable struct for session responses
 {"account":{"registered":true,"key":"19299516"},"session":{"id":"5207810509S6ff132afd8ca11dc5068148922c42cc7","expiration":"2019-10-05T11:43:39.594008Z"}}
 */

struct SessionResponse: Codable {
    let account: Account
    let session: Session
    
    enum CodingKeys: String, CodingKey {
        case account
        case session
    }
    
    struct Account: Codable {
        let registered: Bool
        let key: String
    }
    
    struct Session: Codable {
        let id: String
        let expiration: String
    }
}
