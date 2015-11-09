#!/usr/bin/env bash

function apt_install {
  apt-get update -y -q
  apt-get install git wget build-essential libssl-dev g++ gcc make -y -q
}

function node_install {
  local url="https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh"
  su - vagrant -c "wget -qO- $url | bash"
}

apt_install
node_install
