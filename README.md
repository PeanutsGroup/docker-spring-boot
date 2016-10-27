#Spring Boot docker

Docker for hosting [Spring Boot](https://projects.spring.io/spring-boot/) apps

##Running your Spring Boot app
    docker run --name my-springboot-app \
        -p 8080:8080 \
        -v /path/to/springboot/myapp:/myapp \
        -e MAIN_APP_FILE=myapp.jar \
        -d buckarooch/spring-boot

The Docker image exposes port 8080.

The Spring Boot jar is mounted in `/myapp`. The main Spring Boot jar file is configured at container start up via the `MAIN_APP_FILE` environment variable. If not set, it defaults to `myapp.jar`.

Using Gradle to build the Spring Boot jar file.
```
./gradlew build
```
The environment can be set via the `SPRING_PROFILES_ACTIVE` environment variable. If not set, it defaults to `production`.
