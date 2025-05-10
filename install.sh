#!/bin/bash

sh install-scripts/install-base.sh
sh install-scripts/install-font.sh
sh install-scripts/install-python.sh
sh install-scripts/install-node.sh
sh install-scripts/nvim/install-vectorcode.sh
sh install-scripts/nvim/install-neovim.sh
sh install-scripts/install-de.sh

stow -t ~/.config .config
