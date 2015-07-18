#!/bin/bash

# Xcode
sudo xcodebuild -license
xcode-select --install

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew install python
brew install ansible

HOMEBREW_CASK_OPTS="--appdir=/Applications" ansible-playbook -i hosts -vv localhost.yml

