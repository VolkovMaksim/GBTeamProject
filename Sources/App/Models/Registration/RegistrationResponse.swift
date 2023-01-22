//
//  RegistrationResponse.swift
//  
//
//  Created by Maksim Volkov on 22.01.2023.
//

import Vapor

struct RegistrationResponse: Content {
    let result: Int
    let user_message: String?
    let error_message: String?
}

