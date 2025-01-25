FROM openjdk:21-jdk-slim
WORKDIR /app
COPY target/api-gateway-service-0.0.1-SNAPSHOT.jar api-gateway-service.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "api-gateway-service.jar"]