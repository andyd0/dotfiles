#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

COMMENT=\#*

sudo -v

if test "$(uname)" = "Darwin"; then

  info "Check and install Homebrew"

  which -s brew

  if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
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

  success "Done with Homebrew setup"
fi

find * -name "*.list" | while read fn; do
  cmd="${fn%.*}"
  set -- $cmd
  info "Installing $1 packages..."
  while read package; do
      if [[ $package == $COMMENT ]];
      then continue
      fi
      substep_info "Installing $package..."
      $cmd $package
  done < "$fn"
  success "Finished installing $1 packages."
done
