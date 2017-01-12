#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "brew start"
# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install Bash 4.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash

# Install other useful binaries.
brew install dark-mode
brew install flow
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install node
brew install rename
brew install keybase
brew install shellcheck
brew install skipfish
brew install speedtest_cli
brew install tree
brew install webkit2png
brew install wget --with-iri
brew install rbenv ruby-build
brew install watchman
brew install yarn
brew install ruby
brew install fastlane

# Remove outdated versions from the cellar.
brew cleanup
echo "brew done"

# NPM
npm i react-native -g


# Cask
echo "cask start"
brew install caskroom/cask/brew-cask

brew cask install 1password
brew cask install spotify
brew cask install things
brew cask install atom
brew cask install slack
brew cask install doxie
brew cask install sonos
brew cask install cyberduck
brew cask install minecraft
brew cask install flux
brew cask install sketch
brew cask install postico

echo "cask done"
echo "Complete. Have a nice day!"
