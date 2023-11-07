FROM openjdk:17-jdk-alpine

WORKDIR /nacos-sync


COPY nacos-sync-server.jar .
ADD bin/ bin/.
ADD conf/ conf/.
ADD logback-spring.xml .

EXPOSE 8083

#VOLUME /nacos-sync/logs
VOLUME /nacos-sync/conf

ENTRYPOINT ["bin/startup-new.sh"]
