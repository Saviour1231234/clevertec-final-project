FROM openjdk:17-jdk-slim-buster

MAINTAINER experto.com
VOLUME /tmp
EXPOSE 8080
ADD build/libs/clevertec-final-0.0.1-SNAPSHOT.jar clevertec-final.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/clevertec-final.jar"]

