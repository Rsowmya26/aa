# Use an official Maven runtime as a parent image
FROM maven:3.6.3-jdk-11

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files into the container
COPY . .

# Build the Maven project
RUN mvn clean install

# Specify the command to run when the container starts
CMD ["java", "-jar", "target/your-artifact.jar"]
