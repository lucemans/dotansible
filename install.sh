#!/bin/sh
sudo apt update
sudo apt install ansible -y

scp -P 2002 root@lucemans.com:/drv/whale/.vault_key ~/.vault_key

sudo ansible-playbook ./local.yml