#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="~/.bitbar/bitbar_plugins"

info "Setting up Bitbar..."

substep_info "Creating Bitbar folder..."
mkdir -p $DESTINATION

symlink "$SOURCE/utc.1s.sh" "$DESTINATION/utc.1s.sh"

success "Finished setting up Karabiner."
