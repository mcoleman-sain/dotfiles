#!/bin/sh

# Atom
rm $HOME/.atom/config.cson
rm $HOME/.atom/init.coffee
rm $HOME/.atom/keymap.cson
rm $HOME/.atom/snippets.cson
rm $HOME/.atom/styles.less
rm $HOME/.atom/packages.txt
ln -s $DOTFILES/atom/config.cson $HOME/.atom/config.cson
ln -s $DOTFILES/atom/init.coffee $HOME/.atom/init.coffee
ln -s $DOTFILES/atom/keymap.cson $HOME/.atom/keymap.cson
ln -s $DOTFILES/atom/snippets.cson $HOME/.atom/snippets.cson
ln -s $DOTFILES/atom/styles.less $HOME/.atom/styles.less
ln -s $DOTFILES/atom/packages.txt $HOME/.atom/packages.txt

# Nixos
rm /etc/nixos/configuration.nix
ln -s $DOTFILES/nixos/hosts/MiGo.nix /etc/nixos/configuration.nix

# Zsh
rm $HOME/.zshrc
ln -s $DOTFILES/zsh/zshrc $HOME/.zshrc

# Git
rm $HOME/.gitconfig
ln -s $DOTFILES/gitconfig $HOME/.gitconfig
