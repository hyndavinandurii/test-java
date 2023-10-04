# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY HelloWorld.jar /app

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV NAME HelloWorld

# Run HelloWorld.jar when the container launches
CMD ["java", "-jar", "HelloWorld.jar"]
