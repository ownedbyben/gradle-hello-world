FROM openjdk:17-jdk-slim AS builder

WORKDIR /source
COPY . /source/
RUN ls -l gradlew && ./gradlew shadowJar



FROM openjdk:17-alpine
WORKDIR /app

COPY --from=builder /source/build/libs/*-all.jar /app/app.jar

RUN adduser -D -h /home/ben ben
USER ben

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
