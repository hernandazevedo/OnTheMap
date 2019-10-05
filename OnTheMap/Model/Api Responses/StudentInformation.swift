//
//  StudentInformation.swift
//  OnTheMap
//
//  Created by Hernand Azevedo on 05/10/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import Foundation
/*
 Codable struct for StudentInformation
 {"firstName":"Cristopher","lastName":"Wolf","longitude":34.638273,"latitude":31.791809,"mapString":"Ashdod","mediaURL":"https://google.com","uniqueKey":"284707949845","objectId":"bmc9qlmj0cagt7efpfq0","createdAt":"2019-10-05T13:40:38.582Z","updatedAt":"2019-10-05T13:40:38.582Z"}
 */
struct StudentInformation: Codable {
    let firstName: String
    let lastName: String
    let longitude: Double
    let latitude: Double
    let mapString: String
    let mediaURL: String
    let uniqueKey: String
    let createdAt: String
    let updatedAt: String
}
