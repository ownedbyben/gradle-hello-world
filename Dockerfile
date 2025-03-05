FROM openjdk:17-jdk-slim AS builder

WORKDIR /source
COPY . /source/
RUN ./gradlew shadowJar


FROM openjdk:17-oraclelinux
WORKDIR /app

COPY --from=builder /source/build/libs/*.jar /app/app.jar

RUN useradd -m ben
USER ben

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
