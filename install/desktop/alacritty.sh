echo "Installing Alacritty"
sudo apt-get install -y alacritty

~/.dotfiles/dotfiles.sh -f install alacritty

# Make alacritty default terminal emulator
sudo update-alternatives --set x-terminal-emulator /usr/bin/alacritty
