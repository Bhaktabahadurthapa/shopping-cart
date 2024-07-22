FROM openjdk:8u151-jdk-alpine3.7

ENV APP_HOME /usr/src/app

COPY target/shopping-cart-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

EXPOSE  8080

ENTRYPOINT exec java -jar app.jar