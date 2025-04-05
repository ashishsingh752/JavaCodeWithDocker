# Pull a base image with gives all the required tools and libraries
FROM openjdk:17-jdk-alpine

# metadata
# Create a folder where the app code will be stored
WORKDIR /app


# COPY . .
# or
COPY src/Main.java  /app/Main.java
# Copy the source code From HOST Machine into the container

# Compile the Java code
RUN javac Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]

# we can also use the entrypoint command to run the java application but 
# CMD is more flexible and allows us to override the command at runtime
# but ENTRYPOINT can't be overridden by the user at runtime