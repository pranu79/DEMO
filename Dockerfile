# Use an official lightweight JDK runtime as base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy jar file into container
COPY target/Demo-0.0.1-SNAPSHOT.jar app.jar

# Expose application port (change if your app runs on a different port)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java","-jar","app.jar"]
