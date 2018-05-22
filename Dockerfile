# Base Alpine Linux based image with OpenJDK JRE only
FROM openjdk:8-jre-alpine
FROM maven:3-alpine
COPY pom.xml pipeline/

COPY src pipeline/src

WORKDIR pipeline/

RUN mvn clean install

# copy application JAR (with libraries inside)
COPY target/*.jar /app.jar
# specify default command
CMD ["java", "-jar", "/app.jar"]
