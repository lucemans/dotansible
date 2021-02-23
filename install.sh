#!/bin/sh
sudo apt update
# sudo apt upgrade
sudo apt install ansible -y

sudo ansible-galaxy collection install community.docker

scp -P 2002 root@lucemans.com:/drv/whale/.vault_key ~/.vault_key

sudo ansible-playbook --vault-password ~/.vault_key ./local.yml

