#!/bin/bash
cd /home/jim/ansible-db-demo
# ansible-playbook -i inventory registration.yml -u devops -b --ask-vault-pass
#ansible-playbook -i inventory yumupdate.yml -u devops -b --ask-vault-pass
cd ../mariadb-ansible-galera-cluster
ansible-playbook -i galera.hosts galera.yml --tags setup -u devops -b
ansible-playbook -i galera.hosts galera.yml --skip-tags setup -u devops -b
ansible-playbook -i galera.hosts galera_bootstrap.yml -u devops -b 
cd ../ansible-db-demo
