#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Configuraing misc scripts..."

symlink "$SOURCE/.pryrc" "$DESTINATION/.pryrc"
symlink "$SOURCE/.vimrc" "$DESTINATION/.vimrc"
symlink "$SOURCE/tat.sh" "$DESTINATION/tat.sh"

success "Finished configuring misc scripts."
