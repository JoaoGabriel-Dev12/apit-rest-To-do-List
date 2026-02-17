FROM eclipse-temurin:17-jdk AS build

RUN apt-get update && apt-get install -y maven

COPY . .

RUN mvn clean install -DskipTests

EXPOSE 8080

COPY --from=build /target/todolist-1.0.0.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]