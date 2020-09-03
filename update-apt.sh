#!/bin/bash

sudo sed 's/security.ubuntu/mirrors.aliyun/g' /etc/apt/sources.list
sudo sed 's/archive.ubuntu/mirrors.aliyun/g' /etc/apt/sources.list
sudo apt update
sudo apt upgrade
