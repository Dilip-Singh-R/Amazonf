FROM tomcat:9
COPY target/*.war /usr/local/tomcat/webapps/Amazon
CMD ["./catalina.sh", "run"]
