# Usar una imagen base de Java 8 (OpenJDK)
FROM --platform=linux/arm64 openjdk:8-jdk-alpine

# Argumentos opcionales para proporcionar valores como JAR_FILE durante el build de Docker
ARG JAR_FILE=target/*.jar

# Copiar el archivo JAR compilado de Spring Boot al contenedor
COPY ${JAR_FILE} app.jar

# Especificar un punto de entrada para ejecutar la aplicación Spring Boot
ENTRYPOINT ["java", "-jar", "/app.jar"]
