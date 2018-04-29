#!/bin/bash
cd ../mariadb-ansible-galera-cluster
ansible-playbook -i galera.chosts galera.yml --tags setup -u devops -b
ansible-playbook -i galera.chosts galera.yml --skip-tags setup -u devops -b
ansible-playbook -i galera.chosts galera_bootstrap.yml -u devops -b 
cd ../ansible-db-demo
