#!/bin/zsh
# Change login shell to zsh
chsh -s /bin/zsh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Python 3 and ansible
brew install python ansible

# Run Ansible deployment
cd ansible
ansible site.yml --connection=local