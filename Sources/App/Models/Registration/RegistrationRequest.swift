//
//  RegistrationRequest.swift
//  
//
//  Created by Maksim Volkov on 22.01.2023.
//

import Vapor

struct RegistrationRequest: Content {
    var username: String
    var email: String
    var password: String
    var credit_card: String
}
/*
 {
     "username": "admin",
     "password": "1234",
     "email": "admin@mail.ru",
     "credit_card": "9321-8432-7543-6321"
 }
 */
