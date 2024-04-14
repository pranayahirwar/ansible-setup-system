#!/usr/bin/env bash

## Install ansible
echo "Installing Ansible for Ubuntu from according to Docs"

echo "update..."
sudo apt-get update -y &>/dev/null

echo "upgrading..."
sudo apt-get upgrade -y &>/dev/null

echo "installing ansible and required softwares..."
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get install -y curl git software-properties-common ansible

## pull remote repo and use ansible to configure system.
# sudo ansible-pull -U https://github.com/someGithubRepo
