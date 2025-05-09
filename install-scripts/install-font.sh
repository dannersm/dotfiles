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

# Set as XFCE Terminal font
echo "Setting XFCE Terminal font..."
CONFIG_DIR="$HOME/.config/xfce4/terminal"
CONFIG_FILE="$CONFIG_DIR/terminalrc"

# Create config directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# Create or update the configuration file
if [ -f "$CONFIG_FILE" ]; then
    # If config exists, update the font settings
    if grep -q "FontName=" "$CONFIG_FILE"; then
        sed -i 's/FontName=.*/FontName=FantasqueSansMono Nerd Font 12/g' "$CONFIG_FILE"
    else
        echo "FontName=FantasqueSansMono Nerd Font 12" >> "$CONFIG_FILE"
    fi
    
    if grep -q "FontUseSystem=" "$CONFIG_FILE"; then
        sed -i 's/FontUseSystem=.*/FontUseSystem=FALSE/g' "$CONFIG_FILE"
    else
        echo "FontUseSystem=FALSE" >> "$CONFIG_FILE"
    fi
else
    # If config doesn't exist, create a new one with basic settings
    cat > "$CONFIG_FILE" << EOF
[Configuration]
FontName=FantasqueSansMono Nerd Font 12
FontUseSystem=FALSE
EOF
fi

echo "Font installation complete. You may need to restart XFCE Terminal for changes to take effect."
