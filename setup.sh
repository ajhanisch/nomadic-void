#!/bin/bash
# 
# file: setup.sh
# 
# simple bash script to perform project setup tasks
# on ansible control node after iso installation

yum install -y epel-release
yum install -y ansible
yum install -y git
chmod +x vault_pass
chmod 0700 vault_pass
dos2unix vault_pass
export VAULT_PASSWORD=password
ansible-playbook main.yml