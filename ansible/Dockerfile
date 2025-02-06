FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install packages and dependencies
RUN apt-get update && apt-get install -y \
    vim \
    default-jdk-headless \
    wget \
    gnupg \
    curl \
    apt-utils \
    software-properties-common

# Install Jenkins using gpg instead of apt-key
RUN wget -qO - https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | gpg --dearmor -o /usr/share/keyrings/jenkins.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/jenkins.gpg] https://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list \
    && apt-get update \
    && apt-get install -y jenkins

# Setting up custom host and username
# RUN hostname jenkins-server
# RUN useradd -m -s /bin/bash devops_user
# USER devops_user

# Set Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"

WORKDIR /root

EXPOSE 8080 80

#VOLUME ["/var/lib/jenkins"]

CMD ["jenkins"]
