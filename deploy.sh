#!/bin/bash

########################################
#                                      #
# Deploy dotfiles to Linux home        #
#                                      #
# Copies contents of this repository   #
# to your home directory with a single #
# script. Fast and easy.               #
#                                      #
########################################

# start preparing ansible to do the actual deployment
echo "Installing ansible and preparing it to deploy settings"
sudo apt-get install software-properties-common
echo "Adding repository"
sudo apt-add-repository ppa:ansible/ansible
echo "Updating cache"
sudo apt-get update
echo "Installing ansible"
sudo apt-get install ansible
echo "- installation done!"

# add localhost to ansible hosts, for convenience
echo -e "[localhost] \nlocalhost ansible_connection=local" >> /etc/ansible/hosts
echo "Localhost added to /etc/ansible/hosts"

# run ansible
echo "Running ansible"
ansible-playbook ansible/deploy.yml