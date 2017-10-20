#!/bin/bash
#Grab a clone of the Ansible AWX Repo for install prep
cd /tmp
git clone https://github.com/ansible/awx.git
# Jump into the ansible install dir and run the installer.
cd awx/installer
ansible-playbook -i inventory install.yml
