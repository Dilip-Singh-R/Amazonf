FROM tomcat:9
COPY /var/lib/jenkins/workspace/amazondock/Amazon-Web/target/Amazon.war /usr/local/tomcat/webapps/Amazon.war
CMD ["./catalina.sh", "run"]
