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

    try app.register(collection: TodoController())
}
