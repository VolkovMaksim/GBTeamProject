//
//  ItemsInCartRequest.swift
//  
//
//  Created by Maksim Volkov on 12.02.2023.
//

import Vapor

struct ItemsInCartRequest: Content {
    var email: String
    var itemsInCart: [String]
}
