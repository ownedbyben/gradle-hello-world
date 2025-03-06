# gradle-hello-world
# Java Hello World using the Gradle Wrapper and the Kotlin DSL
This is a Hello World project that contains the most important parts of the Gradle build scripts.

# Tasks
```
build - Compiles Hello World and creates JAR files.
2 jar files will be created:
- gradle-hello-world-all.jar - this jar contains everything.
- gradle-hello-world.jar - this is regular jar, it contains only the project's classes.
```

# Build
```
./gradlew build
The jar files located ar gradle-hello-world/build/libs/
make the runnable jar executable then, use "java -jar gradle-hello-world-all.jar"
```

# 🛠️ Setup Instructions

## Prerequisites

Make sure you have the following installed:

- **Java 17**
- **Gradle**
- **Docker**

## Clone the Repository
```
git clone https://github.com/ownedbyben/gradle-hello-world.git
cd gradle-hello-world/
```

## Build the Project
```
./gradlew build
```

## Run the Application
```
after build the project a folder "build" created.
- *cd build/libs*
- *ls*
- *java -jar app-<version>-all.jar*
```

