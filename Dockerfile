# Use official Tomcat image with Java 17
FROM tomcat:9.0-jdk17-openjdk

# Set working directory inside container
WORKDIR /usr/local/tomcat

# Remove default ROOT webapp
RUN rm -rf webapps/ROOT

# Copy your project’s web files (JSP, etc.) into ROOT
COPY web/ webapps/ROOT/

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
