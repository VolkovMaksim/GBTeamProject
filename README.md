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
  
    "password": String(Optional),
    "user_message": String(Optional),
    "credit_card": String(Optional),
    "result": Int,
    "email": String(Optional),
    "error_message": String(Optional),
    "username": String(Optional)
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
