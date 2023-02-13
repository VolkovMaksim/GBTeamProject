//
//  EditItemsInCartController.swift
//  
//
//  Created by Maksim Volkov on 13.02.2023.
//

import Vapor

class EditItemsInCartController {
    let registeredUser = RegisteredUsers()
    var editStatus = 0
    func editItemInCart(_ req: Request) throws -> EventLoopFuture<ItemsInCartResponse> {
        // проверяем, что body - не дырка от бублика
        guard let body = try? req.content.decode(ItemsInCartRequest.self) else {
            throw Abort(.badRequest)
        }
        let usersMessage = registeredUser.usersEditItemsInCart(body: body)
        switch usersMessage.rawValue {
        case "Данные корзины изменены успешно!":
            editStatus = 1
        default:
            editStatus = 0
        }
        let response = ItemsInCartResponse(
            result: editStatus,
            // передаем клиенту сообщение о результате регистрации/проверке занятости e-mail
            user_message: usersMessage.rawValue,
            error_message: nil
        )
        
        print(response)

        return req.eventLoop.future(response)
    }
}
