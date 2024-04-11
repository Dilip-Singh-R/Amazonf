FROM maven:3.6
COPY target/*.war /app/Amazon.War
WORKDIR /app
CMD ["sh","catalina","sh"]
