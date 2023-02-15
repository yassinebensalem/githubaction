# Use an existing Docker image as a base
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /app

# Copy the application files from the host into the container
COPY . .

# Install Node.js and npm
RUN apt-get update && apt-get install -y nodejs npm

# Specify the command to run when the container starts
CMD ["npm", "start"]
