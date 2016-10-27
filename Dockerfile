FROM openjdk:8

MAINTAINER Buckaroo Cheung <cheung.buckaroo@gmail.com>

ENV SPRING_PROFILES_ACTIVE production
ENV MAIN_APP_FILE myapp.jar

RUN mkdir -p /myapp

ADD startup.sh /

WORKDIR /myapp

EXPOSE 8080

CMD ["/bin/bash", "/startup.sh"]

