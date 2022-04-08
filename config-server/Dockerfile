FROM openjdk:17-jdk-slim-buster

MAINTAINER experto.com
VOLUME /tmp
EXPOSE 8889
ADD build/libs/config-server-0.0.1-SNAPSHOT.jar config-server.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/config-server.jar"]

