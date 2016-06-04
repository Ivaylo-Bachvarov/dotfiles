#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/rcs/.zshrc" ~
ln -sfv "$DOTFILES_DIR/rcs/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfTv "$DOTFILES_DIR" ~/.dotfiles
ln -sfv "$DOTFILES_DIR/subl/Preferences.sublime-settings" ~/.config/sublime-text-3/Packages/User/
ln -sfv "$DOTFILES_DUR/subl/Package Control.sublime-settings" ~/.config/sublime-text-3/Packages/User/
