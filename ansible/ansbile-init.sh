#!/bin/bash 

# hosts.ini = inventario
# Exemplo do hosts.ini:
# [docker_containers]
# 127.0.0.1 ansible_port=2222 ansible_user=root ansible_ssh_private_key_file=./id_rsa

# meu_playbook.yml = install_packages.yml 

ansible-playbook -i /caminho/para/o/inventario meu_playbook.yml

