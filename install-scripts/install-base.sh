sudo apt update
sudo apt install -y git curl wget tmux ripgrep fd-find neofetch unzip stow

# Install Brave
curl -fsS https://dl.brave.com/install.sh | sh

# Install starship
sudo curl -sS https://starship.rs/install.sh | sh

echo 'export PATH="$PATH:/opt/nvim/"' >> ~/.bashrc
echo "alias vim='nvim'" >> ~/.bashrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc
