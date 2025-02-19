# Use the official Node.js image from the Docker Hub
FROM ubuntu:20.04

# Set the working directory in the container
WORKDIR /root

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget 

# Install NVM and Node.js in a single RUN command
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 20.11.1

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash && \
    . "$NVM_DIR/nvm.sh" && \
    nvm install $NODE_VERSION && \
    nvm alias default $NODE_VERSION && \
    nvm use default

# Add node and npm to path so they are available in subsequent commands
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# Expose the ports
EXPOSE 8080 80

# Uncomment and modify these when you're ready to run your application
# COPY . .
# CMD ["node", "server.js"]