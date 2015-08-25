#!/bin/bash

echo "Installing dotfiles"

echo "Initializing submodule(s)"
git submodule update --init --recursive

echo "Linking Dotfiles"
source install/link.sh

echo "Platform Specific Configs"
if [ "$(uname)" == "Darwin" ]; then
    echo "Running on OSX"
fi

echo "Initialize vim"
mkdir -p ~/.vim-tmp


echo "Done."
