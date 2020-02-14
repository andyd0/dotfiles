#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

info "Configuraing misc scripts..."

symlink "$SOURCE/run.scpt" "$DESTINATION/run.scpt"
symlink "$SOURCE/.pryrc" "$DESTINATION/.pryrc"

success "Finished configuring misc scripts."
