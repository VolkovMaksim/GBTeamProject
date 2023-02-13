//
//  ItemsInCartResponse.swift
//  
//
//  Created by Maksim Volkov on 12.02.2023.
//

import Vapor

struct ItemsInCartResponse: Content {
    var result: Int
    var user_message: String
    var error_message: String?
}
