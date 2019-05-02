#!/bin/bash

echo "Installing kubernetes..."

apt update

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt update
apt install -y apt-utils kubelet kubeadm kubectl
