#!/bin/bash

# ChromaDB installation

# VectorCode CLI installation
sudo apt update
sudo apt install pipx
pipx ensurepath
pipx install vectorcode[lsp, mcp]

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
sudo mkdir -p /opt/nvim
sudo mv nvim-linux-x86_64.appimage /opt/nvim/nvim
