import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "СЕРВЕРНАЯ ЧАСТЬ ДОСТУПНА"
    }

    //MARK: РЕГИСТРАЦИЯ
    let controllerRegistration = RegistrationController()
    // при запросе на url "registration" будет использован класс RegistrationController - метод registration
    app.post("registration", use: controllerRegistration.registration)
    
    //MARK: АВТОРИЗАЦИЯ
    let controllerAuthorization = AuthorizationController()
    // при запросе на url "authorization" будет использован класс AuthorizationController - метод authorization
    app.post("authorization", use: controllerAuthorization.authorization)

    try app.register(collection: TodoController())
}
