//
//  FeedbackController.swift
//  
//
//  Created by Maksim Volkov on 23.02.2023.
//

import Vapor

class FeedbackController {
    
    let app = Application()
    var stock = Merch()
    
    func addFeedback(_ req: Request) throws -> EventLoopFuture<FeedbackResponse> {
        guard let body = try? req.content.decode(FeedbackRequest.self) else {
            throw Abort(.badRequest)
        }
        
        
        let directory = app.directory.workingDirectory
        let configDir = "Public"
        let decoder = JSONDecoder()
        let encoder = JSONEncoder()
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: directory)
                .appendingPathComponent(configDir, isDirectory: true)
                .appendingPathComponent("merch.json", isDirectory: false))
            
            
            stock = try decoder.decode(Merch.self, from: data)
            stock[body.merch]?.feedbacks = body.feedbacks
            let newData = try encoder.encode(stock)
            let _ = req.fileio.writeFile(ByteBuffer(data: newData), at: "Public/merch.json")
            
        } catch {
            print(error)
        }
        
        let response = FeedbackResponse(
            result: 1,
            user_message: "Ваш отзыв успешно добавлен!"
        )
        sleep(2)
        return req.eventLoop.future(response)
    }
}
