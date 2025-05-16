# Use the official Node.js image from the Docker Hub
FROM ubuntu:20.04


# Set the working directory in the container
WORKDIR /root

# Copy the server.js file into the container
ENV DEBIAN_FRONTEND=noninteractive

# Install any dependencies (if you have any, here we don’t need extra ones)
RUN apt-get update && apt-get install -y \
    emacs \
    wget \
    curl \
    gcc \
    g++ \
    gdb \
    valgrind \
    cmake 

# Expose the port (8080) on my local computer for my react application in my container that the server will listen on
EXPOSE 8080 80

# Run the server script when the container starts
# CMD ["node", "server.js"]
