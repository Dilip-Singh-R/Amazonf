
FROM ubuntu:21.04
LABEL maintainer="Dilip R"
WORKDIR /apachetomcat
RUN apt-get install -y openjdk-11-jdk  && \
    apt-get clean && \ apt-get install wget
RUN wget -O tomcat.tar.gz https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz && \
    tar -xvf tomcat.tar.gz && \
    rm tomcat.tar.gz && \
    mv apache-tomcat-9.0.87 tomcat
WORKDIR /apachetomcat/tomcat/bin
COPY Amazon.war ../webapps/
CMD ["./catalina.sh", "run"]

