#!/bin/sh
sudo apt update

sudo apt install ansible -y

sudo ansible-galaxy collection install community.docker

scp root@lucemans.com:/drv/whale/.vault_key ~/.vault_key

sudo ansible-playbook --vault-password ~/.vault_key ./local.yml

