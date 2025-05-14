/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/mkasberg/ghostty-ubuntu/HEAD/install.sh)"

mkdir -p ~/.config/ghostty
ln -fs ~/code/dev-setup/configs/ghostty/config ~/.config/ghostty/config