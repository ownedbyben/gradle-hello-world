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

# 📖 Overview
This project is a Java-based application built using Gradle. It follows a CI/CD pipeline with GitHub Actions and is containerized using Docker for seamless deployment.

## The project includes:

- **Java (Kotlin-based) application**
- **Gradle & build process**
- **GitHub Actions for CI/CD automation**
- **Multi-stage Docker build for lightweight deployment**


# Questions 

## Which programming language is this? 
This project is written on java language. 



## What is Gradle? 
Gradle is an open-source build automation tool for Java. It compile code, manage dependencies, run tests, and package applications efficiently. 



## How does Gradle work? 
Gradle automates builds using task-based execution that reads a build script like "build.gradle.kts" that contains the instructions on how to build the project, then downloads needed libraries (dependencies) via repositories like Maven Central and then compiles the Java code into a runnable format. 
Gradle can also create a single JAR file (a package that contains everything needed to run the app) - known as FAT JAR. 



## What is the Gradle Wrapper? 
The Gradle Wrapper is a script that allows you to run Gradle without manually installing it. It automatically downloads and uses the correct Gradle version specified for the project, ensuring consistency across different environments.

*The Gradle Wrapper consists of the following files:* 
- 1. gradlew (Linux/macOS) & gradlew.bat (Windows) – Shell and batch scripts to run Gradle without requiring a manual installation.
- 2. gradle/wrapper/gradle-wrapper.jar – A small Java program that downloads the specified Gradle version.
- 3. gradle/wrapper/gradle-wrapper.properties – Configuration file that defines the Gradle version and distribution URL (where to download Gradle from) and the distribution type (ZIP or TARBALL)



# 🛠️ Setup Instructions

## Prerequisites

Make sure you have the following installed:

- **Java 17**
- **Gradle**
- **Git**
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
after build the project a folder "build" is created.
- cd build/libs
- ls
- java -jar app-<version>-all.jar
```

