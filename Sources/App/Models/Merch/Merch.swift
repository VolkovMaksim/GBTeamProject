//
//  File.swift
//  
//
//  Created by Maksim Volkov on 06.02.2023.
//

import Foundation

struct MerchElement: Codable {
    let name: String
    let price, size: Int
    let color, icon: String
    var feedbacks: [String]
}

typealias Merch = [String: MerchElement]

