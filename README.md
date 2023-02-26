# GBTeamProject

Серверная часть Командного проекта 👉 https://gb.rus-volk.ru

Клиентская часть проекта 👉 https://github.com/Anton-Belyi/Marketplace/tree/release

Серверная часть принимает следующие запросы и передает следующие ответы:
### 1. /registration

POST-запрос Body raw JSON:

{

     "username": String,
     "password": String,
     "email": String,
     "credit_card": String
 }
 
 Ответ:
 
 {
 
    "user_message": String(Optional),
    "error_message": String(Optional),
    "result": Int
  }
  
  ### 2. /authorization
  
  POST-запрос Body raw JSON:
  
  {
  
    "email": String,
    "password": String
  }
  
  Ответ:
 
  {
  
    "username": String(Optional),
    "email": String(Optional),
    "password": String(Optional),
    "credit_card": String(Optional),
    "itemsInCart": [String](Optional),
    "result": Int,
    "user_message": String,
    "error_message": String(Optional)
  }
  
  ### 3. /editpersonaldata
  
  POST-запрос Body raw JSON:
  
  {
  
     "username": String,
     "password": String,
     "email": String,
     "credit_card": String
  }
  
  Ответ:
  
  {
  
    "user_message": String,
    "error_message": String(Optional),
    "result": Int
  }
  
  ### 4. /stock
  
  GET-запрос Body raw JSON:
  
  Ответ:
  
  {
    "stock": Merch
  }
  
    struct MerchElement: Codable {
        let name: String
        let price, size: Int
        let color, icon: String
        let feedbacks: [String]
    
    }

  typealias Merch = [String: MerchElement]

  ### 5. /edititemsincart
  
  POST-запрос Body raw JSON:
  
  {
  
     "email": String,
     "itemsInCart": [String]
  }
  
  Ответ:
  
  {
  
    "user_message": String,
    "error_message": String(Optional),
    "result": Int
  }
