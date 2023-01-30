//
//  EditPersonalDataResponse.swift
//  
//
//  Created by Maksim Volkov on 30.01.2023.
//

import Vapor

struct EditPersonalDataResponse: Content {
    var result: Int
    var user_message: String
    var error_message: String?
}
