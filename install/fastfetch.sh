# Display system information in the terminal
sudo add-apt-repository -y ppa:zhangsongcui3371/fastfetch
sudo apt update -y
sudo apt install -y fastfetch

mkdir -p ~/.config/fastfetch
ln -fs ~/code/dev-setup/configs/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc