#!/bin/bash

set -e

sudo sed 's/security.ubuntu/mirrors.aliyun/g' /etc/apt/sources.list
sudo sed 's/archive.ubuntu/mirrors.aliyun/g' /etc/apt/sources.list
sudo apt update
sudo apt upgrade

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
