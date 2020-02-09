#! /usr/bin/env sh

info "Installing Ruby Gems..."

gem install bundler
bundle install --gemfile=$DOTFILES/ruby/Gemfile
gem update --system
bundle update --gemfile=$DOTFILES/ruby/Gemfile

success "Done installing Ruby Gems"
