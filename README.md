# spring-boot-api-example
Proyecto Spring Boot 2 - Api Example


----------------------------------------

http://localhost:8081/medra/public/status

----------------------

POST /medra/public/user/save HTTP/1.1
Host: localhost:8081
Content-Type: application/json
{
	"username": "oscar",
	"password": "oscar",
	"email": "fertonani.oscar@gmail.com"
}

------------------------

POST /medra/oauth/token HTTP/1.1
Host: localhost:8081
Content-Type: application/x-www-form-urlencoded
cache-control: no-cache
Postman-Token: 05392ca1-24fa-41f7-b32f-2b3d9be86196
username=oscarpassword=oscargrant_type=passwordclient_id=webclient_secret=web


-------------------

http://localhost:8081/medra/user
Authorization Bearer 477f8ef3-9a85-4477-aa8c-57e28e0f1e46