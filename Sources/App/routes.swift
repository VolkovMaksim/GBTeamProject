import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "СЕРВЕРНАЯ ЧАСТЬ ДОСТУПНА"
    }

    //MARK: РЕГИСТРАЦИЯ
    let controllerRegistration = RegistrationController()
    app.post("registration", use: controllerRegistration.registration)
    
    //MARK: АВТОРИЗАЦИЯ
    let controllerAuthorization = AuthorizationController()
    app.post("authorization", use: controllerAuthorization.authorization)
    
    //MARK: ИЗМЕНЕНИЕ ПЕРСОНАЛЬНЫХ ДАННЫХ
    let controllerEditPersonalData = EditPersonalDataController()
    app.post("editpersonaldata", use: controllerEditPersonalData.editPersonalData)
    
    //MARK: ЗАПРОС СПИСКА ТОВАРОВ
    let controllerStock = StockController()
    app.get("stock", use: controllerStock.stock)
    
    //MARK: ИЗМЕНЕНИЕ СПИСКА ТОВАРОВ В КОРЗИНЕ
    let controllerEditItemsInCart = EditItemsInCartController()
    app.post("edititemincart", use: controllerEditItemsInCart.editItemInCart)
    
    //MARK: ВЫГРУЗКА ИЗОБРАЖЕНИЯ
    app.get("$0.png") { req async in
        "передача изображения"
    }
    
    //MARK: РЕДАКТИРОВАНИЕ ОТЗЫВОВ
    let controllerFeedback = FeedbackController()
    app.post("feedback", use: controllerFeedback.addFeedback)

    try app.register(collection: TodoController())
}
