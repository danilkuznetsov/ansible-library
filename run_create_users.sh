#!/bin/sh

##
## Run the create_users.yml playbook in the configuration/playbooks directory
##

ansible-playbook create_users.yml -u root -k -v -i inventory/hosts