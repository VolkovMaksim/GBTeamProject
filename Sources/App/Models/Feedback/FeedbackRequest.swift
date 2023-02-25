//
//  FeedbackRequest.swift
//  
//
//  Created by Maksim Volkov on 23.02.2023.
//

import Vapor

struct FeedbackRequest: Content {
    let merch: String
    let feedbacks: [String]
}
