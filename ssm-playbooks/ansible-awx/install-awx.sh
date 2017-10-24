#!/bin/bash
#Grab a clone of the Ansible AWX Repo for install prep
cd /tmp
git clone https://github.com/ansible/awx.git
# Jump into the ansible install dir and run the installer.
cd awx/installer
# change the postgres install location, so it doesn't get wiped on boot.
sed -i 's/postgres_data_dir=\/tmp\/pgdocker/postgres_data_dir=\/data\/pgdocker/' testinventory
ansible-playbook -i inventory install.yml
