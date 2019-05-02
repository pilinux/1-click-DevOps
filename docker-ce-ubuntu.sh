#!/bin/bash

echo "Installing docker..."

apt update
apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
   "deb https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"

apt update
apt install -y docker-ce docker-ce-cli containerd.io

echo "Verifying Docker CE..."
docker run hello-world
