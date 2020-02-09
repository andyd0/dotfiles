#! /usr/bin/env sh
DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Installing Ruby Gems..."

gem install bundler
bundle install --gemfile=$DOTFILES/ruby/Gemfile
gem update --system
bundle update --gemfile=$DOTFILES/ruby/Gemfile

symlink "$SOURCE/.pryrc" "$DESTINATION/.pryrc"

success "Done installing Ruby Gems"
