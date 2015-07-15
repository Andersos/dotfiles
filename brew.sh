#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install other useful binaries.
brew install dark-mode
brew install flow
brew install git
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install node
brew install rename
brew install shellcheck
brew install skipfish
brew install speedtest_cli
brew install tree
brew install webkit2png
brew install wget --with-iri

# Remove outdated versions from the cellar.
brew cleanup

echo "Done =)"