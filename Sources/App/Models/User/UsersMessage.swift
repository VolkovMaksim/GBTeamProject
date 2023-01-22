//
//  UsersMessage.swift
//  
//
//  Created by Maksim Volkov on 22.01.2023.
//

import Foundation

enum UsersMessage: String {
    case successfulRegistration = "Регистрация прошла успешно!"
    case emailAlreadyExists = "Пользователь с таким E-mail уже зарегистрирован"
    case successfulAuthorization = "Успешная авторизация!"
    case emailNotExists = "Такой E-mail не зарегистрирован"
    case wrongPassword = "Неправильный пароль!"
}
