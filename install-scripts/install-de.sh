sudo apt update
sudo apt install -y rofi i3 polybar picom feh sassc

# clone and run the catppuccin gtk installer
cd
curl -LsSO "https://raw.githubusercontent.com/catppuccin/gtk/v1.0.3/install.py"
python3 install.py mocha lavender


# clone and run the catppuccin papirus folders
git clone https://github.com/catppuccin/papirus-folders.git
cd papirus-folders
sudo cp -r src/* /usr/share/icons/Papirus
curl -LO https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-folders/master/papirus-folders && chmod +x ./papirus-folders
./papirus-folders -C cat-mocha-lavender --theme Papirus-Dark

cd 
rm -rf papirus-folders
rm install.py


