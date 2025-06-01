# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Set the working directory in the container
WORKDIR /root

# Set environment variables to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl wget unzip ca-certificates && \
    apt-get clean

# Download and install Microsoft's OpenJDK 21
RUN curl -L -o openjdk.tar.gz https://aka.ms/download-jdk/microsoft-jdk-21-linux-x64.tar.gz && \
    mkdir -p /opt/java && \
    tar -xzf openjdk.tar.gz -C /opt/java && \
    rm openjdk.tar.gz && \
    ln -s /opt/java/* /opt/java/current

# Set environment variables for Java
ENV JAVA_HOME=/opt/java/current
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# Verify Java installation
#RUN java -version && \
#    javac -version
