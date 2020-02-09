#!/bin/sh

if test "$(uname)" = "Darwin"; then

  printf "\e[00;31mInstalling Brew...\e[00;00m\n"

  cd "$( dirname "$0" )"

  which -s brew

  if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    # Update Brew formulas
    brew update

    # Install Brewfile
    brew bundle

    # Outdated Packages
    brew outdated

    # Upgrade Existing Bundles
    brew upgrade

    # Cleanup any old software
    brew cleanup

    # Run the Doctor
    brew doctor

    # List all Packages
    brew list --versions

    # List all Services
    brew services list

    printf "\033[00;36mInstalled Brew\033[00;00m\n"
  fi

fi
