FROM openjdk:17-jdk-alpine

COPY target/Sample_Project-0.0.1-SNAPSHOT.war  /app/Sample_Project-0.0.1-SNAPSHOT.war


ENTRYPOINT ["java", "-jar", "/app/Sample_Project-0.0.1-SNAPSHOT.war"]



Dockerfile for healthcare-project
--------------------------------------------------------------------------------------------
FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
