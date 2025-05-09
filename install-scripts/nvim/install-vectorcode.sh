#!/bin/bash

sudo apt install pipx
pipx ensurepath

# ChromaDB installation
pipx install chromadb
sudo wget https://gist.githubusercontent.com/tazarov/5e10ce892c06757d8188a8a34cd6d26d/raw/327a9d0b07afeb0b0cb77453aa9171fdd190984f/chroma-cli.service  -O /etc/systemd/system/chroma.service
sudo systemctl daemon-reload
sudo systemctl enable chroma
sudo systemctl start chroma



# VectorCode CLI installation
sudo apt update
pipx install vectorcode[lsp,mcp]
