#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.config/karabiner)"

info "Setting up Karabiner..."

substep_info "Creating Karabiner folder..."
mkdir -p $DESTINATION

symlink "$SOURCE/karabiner.json" "$DESTINATION/karabiner.json"
clear_broken_symlinks "$DESTINATION"

success "Finished setting up Karabiner."
