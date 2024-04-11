FROM tomcat:9
COPY target/*.war /usr/local/tomcat/webapps/*.War
WORKDIR /app
CMD ["./catalina.sh", "run"]
