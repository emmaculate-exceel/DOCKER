# Understanding Docker and it's uses and use cases.


Docker is an open-source platform tool designed to contain and automate deployment, scaling and managing of applications using containerization which are lightweight containers that are portable and self sufficent enough with the inclusion with almost everything neccessary to run a piece of code or programme like code , libraries and dependencies .

## Features of Docker are :

#### Containerization

+ Container are isolated from one another on host machines

+ Capable of provide consistence if required

+ Cross platform

+ Volumes (for consistency of data)
#### Portability

+ Docker container built on one machine can run across multiple machines or platform

+ Docker is lightweight and compared to install the desired environment on the operating system or compared to a virtual machine .

#### Networks

Docker is flexible enough to handle different type of network configurations depending on it user(s)

+ Bridge

+ Host

+ Overlay

+ Macvlan


and some other one's


#### Volumes


Docker can use command(s) like docker volumes to manages and manipulate how system volume(s) is being used and manipulated inside the docker enviroment.

---

## Docker Instructions

Instruction	Description


ADD		Add local or remote files and directories.
ARG		Use build-time variables.
CMD		Specify default commands.
COPY		Copy files and directories.
ENTRYPOINT	Specify default executable.
ENV		Set environment variables.
EXPOSE		Describe which ports your application is listening on.
FROM		Create a new build stage from a base image.
HEALTHCHECK	Check a container's health on startup.
LABEL		Add metadata to an image.
MAINTAINER	Specify the author of an image.
ONBUILD		Specify instructions for when the image is used in a build.
RUN		Execute build commands.
SHELL		Set the default shell of an image.
STOPSIGNAL	Specify the system call signal for exiting a container.
USER		Set user and group ID.
VOLUME		Create volume mounts.
WORKDIR		Change working directory.



### docker installation manual
#### Note this is for Linux distros or should i say linux users alone

* i'll suggest you start from here

sudo apt-get install ca-certificates
sudo apt-get install lsb-release

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/<linux OS>/gpg | sudo gpg --deamor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture)
signed-by=/etc/apt/keyrings/docker.gpg]
https://download.docker.com/linux/<linux OS> $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin