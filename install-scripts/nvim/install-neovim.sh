#!/bin/bash

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
sudo mkdir -p /opt/nvim
sudo mv nvim-linux-x86_64.appimage /opt/nvim/nvim
echo 'export PATH="$PATH:/opt/nvim/"' >> ~/.bashrc
echo "alias vim='nvim'" >> ~/.bashrc

# clone config
curr_dir=$(dirname $0)
cd $curr_dir
cd ../../.config
git clone git@github.com:dannersm/nvim.git

