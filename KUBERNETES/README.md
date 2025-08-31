# KUBERNETES


### Setting up kubernetes on a local machine


---
  * manual installation guide for managing kubernetes locally. 
```
# install docker
* sudo apt install docker.io -y
```
```
# install kubernetes
* sudo apt install kubeadm kubelet kubectl kubernetes-cni -y
```
```
# After that the next command to run will be the command to initiate the control panel for the master node .
* sudo kubeadm init

# after running the above commad it will then output a join command or token which will be used to connect to our work nodes to the kubernetes cluster.


```