#!/usr/bin/env bash

# Install command-line tools using Homebrew.

echo "brew start"
# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install other useful binaries.
brew install git
brew install node
brew install yarn

# Remove outdated versions from the cellar.
brew cleanup

echo "brew done. Have a nice day!"
