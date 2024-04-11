FROM tomcat:9
COPY /var/lib/jenkins/workspace/amazondock/Amazon-Web/target/*.war /usr/local/tomcat/webapps/Amazon.war
CMD ["./catalina.sh", "run"]
