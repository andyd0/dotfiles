#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Configuraing zsh..."

symlink "$SOURCE/.zshrc" "$DESTINATION/.zshrc"

success "Finished configuring zsh."
