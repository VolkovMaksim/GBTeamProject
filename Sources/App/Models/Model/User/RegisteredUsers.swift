//
//  RegisteredUsers.swift
//  
//
//  Created by Maksim Volkov on 22.01.2023.
//

import Foundation

class RegisteredUsers {
    let registeredUsers = UserDefaults.standard
    // создаем пустой архив для сохранения-регистрации пользователей [e-mail:Any]
    var usersDictionary = [String: Any]()
    // метод регистрации/проверки занятости e-mail регистрирующегося пользователя
    func usersRegistration(body: RegistrationRequest) -> UsersMessage {
        // проверяем словарь на наличие объекта с ключом email
        guard let _ = registeredUsers.object(forKey: body.email) as? [String:Any] else {
            // если в UserDefaults нет записи по переданному e-mail, то добавляем пользователя в словарь и возвращаем ответ сервера
            usersDictionary["username"] = body.username
            usersDictionary["email"] = body.email
            usersDictionary["password"] = body.password
            usersDictionary["credit_card"] = body.credit_card
            usersDictionary["itemsInCart"] = []
            
            // сохраняем словарь с данными нового пользователя
            registeredUsers.set(usersDictionary, forKey: body.email)
            print(usersDictionary)
            return .successfulRegistration
        }
        // если в словаре есть запись по переданному e-mail
        return .emailAlreadyExists
    }
}
