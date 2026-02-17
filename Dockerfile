FROM eclipse-temurin:17-jdk AS build

# Instala o Maven
RUN apt-get update && apt-get install -y maven

WORKDIR /app

COPY . .

RUN mvn clean install -DskipTests

RUN cp target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]