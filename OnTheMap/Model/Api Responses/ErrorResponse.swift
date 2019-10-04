//
//  ErrorResponse.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 04/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import Foundation
/*
 Codable struct for error
 {"status":400,"error":"Did not specify exactly one credential."}
 */
struct ErrorResponse: Codable {
    let status: Int
    let error: String
    
    enum CodingKeys: String, CodingKey {
        case status
        case error
    }
}

extension ErrorResponse: LocalizedError {
    var errorDescription: String? {
        return error
    }
}
