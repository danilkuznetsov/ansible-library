#!/bin/sh

##
## Run the bootstrap.yml  playbook in the configuration/playbooks directory
##

ansible-playbook bootstrap.yml  -u admin-user -v -i inventory/hosts --ask-become