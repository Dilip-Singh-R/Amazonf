FROM tomcat:9
ADD Amazon.war /usr/local/tomcat/webapps/Amazon.war
CMD ["./catalina.sh", "run"]
