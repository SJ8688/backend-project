FROM openjdk:11-jre-slim
COPY /target/*.jar /opt/backend.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/backend.jar"]
