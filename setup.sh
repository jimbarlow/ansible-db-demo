#!/bin/bash
cd /home/jim/ansible-db-demo
ansible-playbook -i cinventory registration.yml -u devops -b --ask-vault-pass
ansible-playbook -i cinventory yumupdate.yml -u devops -b --ask-vault-pass
cd ../mariadb-ansible-galera-cluster
ansible-playbook -i galera.chosts galera.yml --tags setup -u devops -b
ansible-playbook -i galera.chosts galera.yml --skip-tags setup -u devops -b
ansible-playbook -i galera.chosts galera_bootstrap.yml -u devops -b 
cd ../ansible-db-demo
