//
//  StockController.swift
//  
//
//  Created by Maksim Volkov on 11.02.2023.
//

import Vapor

class StockController {
    
    let app = Application()
    var merch = Merch()
    
    func stock(_ req: Request) throws -> EventLoopFuture<StockResponse> {
        
        let directory = app.directory.workingDirectory
        let configDir = "Public"
        let decoder = JSONDecoder()
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: directory)
                .appendingPathComponent(configDir, isDirectory: true)
                .appendingPathComponent("merch.json", isDirectory: false))
            
            merch = try decoder.decode(Merch.self, from: data)
            
        } catch {
            print(error)
        }
        
        let response = StockResponse(
            stock: merch
        )
        
        return req.eventLoop.future(response)
    }
}
