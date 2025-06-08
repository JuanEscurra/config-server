FROM eclipse-temurin:11-jdk-alpine

RUN apk add --no-cache curl

WORKDIR /app
COPY target/config-server.jar app.jar

EXPOSE 8888

ENTRYPOINT ["java", "-jar", "app.jar"]
