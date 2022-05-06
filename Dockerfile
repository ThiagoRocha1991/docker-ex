FROM openjdk

WORKDIR /app

ENV APP_NAME=docker-ex-0.0.1-SNAPSHOT.jar

COPY target/${APP_NAME} /app/spring-app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "spring-app.jar"]