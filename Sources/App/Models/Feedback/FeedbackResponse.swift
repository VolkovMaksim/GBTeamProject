//
//  FeedbackResponse.swift
//  
//
//  Created by Maksim Volkov on 23.02.2023.
//

import Vapor

struct FeedbackResponse: Content {
    let result: Int
    let user_message: String?
}
