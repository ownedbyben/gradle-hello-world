FROM openjdk:17-jdk-slim
WORKDIR /app

COPY build/libs/*.jar app.jar

RUN useradd -m ben
USER ben

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
