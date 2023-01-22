//
//  AuthorizationResponse.swift
//  
//
//  Created by Maksim Volkov on 22.01.2023.
//

import Vapor

struct AuthorizationResponse: Content {
    var username: String?
    var email: String?
    var password: String?
    var credit_card: String?
    var itemsInCart: [String]?
    var result: Int
    var user_message: String
    var error_message: String?
}
