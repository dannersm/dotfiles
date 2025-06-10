#!/bin/bash

sudo apt install pipx
pipx ensurepath

# VectorCode CLI installation
sudo apt update
pipx install vectorcode[lsp,mcp]
