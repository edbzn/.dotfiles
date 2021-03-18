#!/bin/sh

# Install Docker CE
sudo apt install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

# Give rights to current user
sudo usermod -aG docker $(whoami)

sudo apt install docker-ce docker-ce-cli containerd.io -y