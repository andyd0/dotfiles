#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Setting up tmux..."

symlink "$SOURCE/.tmux.conf" "$DESTINATION/.tmux.conf"

success "Finished setting up tmux."
