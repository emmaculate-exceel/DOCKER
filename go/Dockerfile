From:

default
# Dockerfile for a Go and React applicat

# Use Ubuntu 20.04 as base image
FROM ubuntu:20.04

# Set the working directory in the container
WORKDIR /root

# Install necessary packages
RUN apt-get update -y && apt-get install -y \
    curl \
    wget

# Download and install Go
RUN wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz && \
    tar -xzf go1.21.0.linux-amd64.tar.gz && \
    rm go1.21.0.linux-amd64.tar.gz

# Add Go to PATH
ENV PATH=$PATH:/root/go/bin

# Expose ports for the application
EXPOSE 8080 80

# If you're building a React application, you'll need Node.js
# Uncomment these lines to add Node.js
# RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
#     apt-get install -y nodejs && \
#     npm install -g serve

# Copy your application files (uncomment and adjust as needed)
# COPY . .

# Build and serve commands for a React app (uncomment and adjust as needed)
# RUN npm install
# RUN npm run build

# Command to run when container starts
# CMD ["serve", "-s", "build", "-l", "8080"]