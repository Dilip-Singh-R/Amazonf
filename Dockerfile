FROM tomcat:9
COPY ./target/*.war /usr/local/tomcat/webapps/Amazon.war
CMD ["./catalina.sh", "run"]
