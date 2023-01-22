//
//  AuthorizationRequest.swift
//  
//
//  Created by Maksim Volkov on 22.01.2023.
//

import Vapor

struct AuthorizationRequest: Content {
    var email: String
    var password: String
}
/*
 {
    "email": "admin@mail.ru",
    "password": "1234"
 }
 */
