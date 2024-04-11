FROM tomcat:9
ADD /var/lib/jenkins/.m2/repository/org/amazon/Amazon-Web/1.0-SNAPSHOT/Amazon-Web-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/Amazon.war
CMD ["./catalina.sh", "run"]
