#!/bin/bash

# Xcode
sudo xcodebuild -license
xcode-select --install

# homebrew & brew-file
curl -fsSL https://raw.github.com/rcmdnk/homebrew-file/install/install.sh | sh
brew update

HOMEBREW_CASK_OPTS="--appdir=/Applications" brew file install -f Brewfile
