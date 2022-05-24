#!/bin/sh
pushd ~/.dotfiles
nixos-rebuild switch --flake .# --use-remote-sudo
popd
