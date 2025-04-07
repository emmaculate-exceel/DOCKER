# Use the official Node.js image from the Docker Hub
FROM ubuntu:20.04

# Set the working directory in the container
WORKDIR /root

# Set environment variables to noninteractive 
ENV DEBIAN_FRONTEND=noninteractive

# Install any dependencies (if you have any, here we don’t need extra ones)
RUN apt-get update && \
    apt-get install -y curl unzip ca-certificates && \
    apt-get clean

# Install and download jdk
# Install and download jdk
RUN apt-get update && apt-get install -y wget && \
    wget -q https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.tar.gz -O /tmp/jdk.tar.gz && \
    mkdir -p /opt/java && \
    tar -xzf /tmp/jdk.tar.gz -C /opt/java && \
    rm /tmp/jdk.tar.gz && \
    mv /opt/java/jdk-* /opt/java/jdk-21

# Set environment variables
ENV JAVA_HOME=/opt/java/jdk-21.0.1
ENV PATH="$JAVA_HOME/bin:$PATH"