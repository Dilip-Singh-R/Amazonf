FROM maven:3.6
COPY target/*.war /app/Amazon.War
WORKDIR /app
CMD ["./catalina.sh", "run"]
