# Use Tomcat base image (Java 17 + Tomcat 10)
FROM tomcat:10.1-jdk17-temurin

# Copy amazon.war into Tomcat as ROOT.war
COPY Amazon.war /usr/local/tomcat/webapps/Amazon.war

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

