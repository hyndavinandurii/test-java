# Use an official OpenJDK Windows image as a parent image
FROM adoptopenjdk/openjdk11:windows

# Set the working directory in the container
WORKDIR /app

# Create a non-root user
RUN useradd -r -u 1001 myuser

# Copy the JAR file into the container at /app
COPY HelloWorld.jar /app

# Change the owner of the JAR file to the non-root user
RUN chown myuser:myuser /app/HelloWorld.jar

# Switch to the non-root user
USER myuser

# Define the command to run your Java application
CMD ["java", "-jar", "HelloWorld.jar"]
