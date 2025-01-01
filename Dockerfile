# Use the official Node.js image from the Docker Hub
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /app

# Copy the server.js file into the container
# COPY server.js /app/

# Install any dependencies (if you have any, here we don’t need extra ones)
# RUN npm install

# Expose the port (8080) on my local computer for my react application in my container that the server will listen on
EXPOSE 8080 3000

# Run the server script when the container starts
# CMD ["node", "server.js"]
