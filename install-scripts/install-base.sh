sudo apt update
sudo apt install -y git curl wget tmux ripgrep fd-find neofetch unzip stow xclip tlp

# Install starship
sudo curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# stow configs
stow -t ~/.config .config
chmod +x ~/.config/polybar/system-bluetooth.sh

