#!/bin/bash

# Create a temporary directory
mkdir -p ~/Downloads/fonts

# Download the font
echo "Downloading Fantasque Sans Mono Nerd Font..."
curl -L "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FantasqueSansMono.zip" -o ~/Downloads/fonts/FantasqueSansMono.zip

# Unzip the font
echo "Extracting font files..."
unzip -q ~/Downloads/fonts/FantasqueSansMono.zip -d ~/Downloads/fonts/FantasqueSansMono

# Create user fonts directory if it doesn't exist
mkdir -p ~/.local/share/fonts

# Copy the font files to the fonts directory
echo "Installing fonts..."
cp ~/Downloads/fonts/FantasqueSansMono/*.ttf ~/.local/share/fonts/

# Update font cache
echo "Updating font cache..."
fc-cache -fv

# Clean up
echo "Cleaning up..."
rm -rf ~/Downloads/fonts

