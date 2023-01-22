//
//  RegistrationController.swift
//  
//
//  Created by Maksim Volkov on 22.01.2023.
//

import Vapor

class RegistrationController {
    let registeredUser = RegisteredUsers()
    var authStatus = 0
    func registration(_ req: Request) throws -> EventLoopFuture<RegistrationResponse> {
        // проверяем, что body - не дырка от бублика
        guard let body = try? req.content.decode(RegistrationRequest.self) else {
            throw Abort(.badRequest)
        }
        // передаем нового пользлователя на проверку занятости e-mail и запись в словарь с получением сообщения об успешности/неуспешности
        let usersMessage = registeredUser.usersRegistration(body: body)
        switch usersMessage.rawValue {
        case "Регистрация прошла успешно!":
            authStatus = 1
        case "Пользователь с таким E-mail уже зарегистрирован":
            authStatus = 2
        default:
            authStatus = 0
        }
        let response = RegistrationResponse(
            result: authStatus,
            // передаем клиенту сообщение о результате регистрации/проверке занятости e-mail
            user_message: usersMessage.rawValue,
            error_message: nil
        )

        return req.eventLoop.future(response)
    }
}
