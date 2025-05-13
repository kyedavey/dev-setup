# Alacritty is a GPU-powered and highly extensible terminal. See https://alacritty.org/
sudo apt install -y alacritty
mkdir -p ~/.config/alacritty
ln -fs ~/code/dev-setup/configs/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -fs ~/code/dev-setup/configs/alacritty/shared.toml ~/.config/alacritty/shared.toml
ln -fs ~/code/dev-setup/configs/alacritty/pane.toml ~/.config/alacritty/pane.toml
ln -fs ~/code/dev-setup/configs/alacritty/btop.toml ~/.config/alacritty/btop.toml
ln -fs ~/code/dev-setup/configs/alacritty/theme.toml ~/.config/alacritty/theme.toml
ln -fs ~/code/dev-setup/configs/alacritty/font.toml ~/.config/alacritty/font.toml
ln -fs ~/code/dev-setup/configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml

# Migrate config format if needed
alacritty migrate 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true

# Make alacritty default terminal emulator
sudo update-alternatives --set x-terminal-emulator /usr/bin/alacritty