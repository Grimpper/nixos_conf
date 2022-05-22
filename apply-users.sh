#!/bin/sh
pushd ~/.dotfiles
home-manager switch -f ./users/grim/home.nix
popd
