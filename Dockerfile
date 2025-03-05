#java lightweight image
FROM openjdk:17-jdk-slim AS builder

WORKDIR /source
COPY . /source/

RUN ./gradlew build

#upload artifact


FROM openjdk:17-jdk-slim
WORKDIR /app

COPY --from=builder  /source/build/libs/*.jar app.jar

RUN useradd -m ben
USER ben

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
