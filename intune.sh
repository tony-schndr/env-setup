#!/bin/bash
set -x

if [ "$(id -u)" != "0" ]; then
   echo "This script must be ran as root"
   exit 1
fi
apt update

apt-get dist-ugprade

curl -sSl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc

curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft-ubuntu-jammy-prod.list

sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" >/etc/apt/sources.list.d/microsoft-edge-dev.list'

apt update
apt install intune-portal


