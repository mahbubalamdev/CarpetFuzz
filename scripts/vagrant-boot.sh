#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt install software-properties-common -y
sudo apt-get install build-essential
sudo add-apt-repository ppa:deadsnakes/ppa -y

sudo apt-get install -y python3.10 python3.10-dev python3.10-venv
sudo ln -s /usr/bin/python3.10 /usr/bin/python

sudo apt install clang lldb lld

sudo apt install docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker vagrant

