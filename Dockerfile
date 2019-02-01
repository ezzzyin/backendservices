# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
MAINTAINER Shwetabh Gaurav <shwetabh.gaurav@gmail.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
#EXPOSE 8080

# The application's jar file
ARG JAR_FILE=/home/travis/.m2/repository/com/ezzzy/restservice/ezzzy/0.0.1-SNAPSHOT/ezzzy-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ./${JAR_FILE} ezzzy-backend.jar

# Run the jar file 
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/ezzzy-backend.jar"]

