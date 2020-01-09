#!/bin/bash

yum install -y epel-release
yum install -y ansible
chmod 0700 vault_pass
dos2unix vault_pass
export VAULT_PASSWORD=password
ansible-playbook main.yml