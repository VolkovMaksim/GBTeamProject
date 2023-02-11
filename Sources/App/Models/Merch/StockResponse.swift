//
//  StockResponse.swift
//  
//
//  Created by Maksim Volkov on 11.02.2023.
//

import Vapor

struct StockResponse: Content {
    let stock: Merch
}
