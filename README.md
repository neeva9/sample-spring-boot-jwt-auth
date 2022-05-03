# Demo for JWT Authentication

#### Prerequisite:
````
Java 8
IntelliJ IDEA
Gradle
````

#### Build:
````
gradle clean build
````

#### Run Application:
````
gradle bootRun
````

#### Swagger:
````
http://localhost:8080/swagger-ui/index.html#/ 
````

#### How to:
````
- Use /authenticate api to generate the JWT token
- To test JWT token run the /hello GET api to check is Hello Authenticated User is displayed or it return 401-Unauthorized
````