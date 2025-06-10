sudo apt update
sudo apt install -y git curl wget tmux ripgrep fd-find neofetch unzip stow xclip tlp maim fzf

# Install starship
sudo curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
echo "alias docs='source ~/.config/scripts/fzf_tmux_session.sh'" >> ~/.bashrc
echo "alias spv='source ./.venv/bin/activate'" >> ~/.bashrc

# install tmux things
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux

# stow configs
stow -t ~/.config .config
sudo stow -t /etc/systemd/system service-files

chmod +x ~/.config/polybar/system-bluetooth.sh

