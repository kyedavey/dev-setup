cd /tmp
wget -O nvim.tar.gz "https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz"
tar -xf nvim.tar.gz
sudo install nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
sudo cp -R nvim-linux-x86_64/lib /usr/local/
sudo cp -R nvim-linux-x86_64/share /usr/local/
rm -rf nvim-linux-x86_64 nvim.tar.gz
cd -

# Install luarocks and tree-sitter-cli to resolve lazyvim :checkhealth warnings
sudo apt install -y luarocks tree-sitter-cli

# Use LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
# Remove the .git folder, so you can add it to your own repo later
rm -rf ~/.config/nvim/.git

# Make everything match the terminal transparency
mkdir -p ~/.config/nvim/plugin/after
ln -fs ~/code/dev-setup/configs/nvim/plugin/after/transparency.lua ~/.config/nvim/plugin/after/transparency.lua

# Default to Tokyo Night theme
ln -fs ~/code/dev-setup/configs/nvim/lua/plugins/theme.lua ~/.config/nvim/lua/plugins/theme.lua

# Turn off animated scrolling
ln -fs ~/code/dev-setup/configs/nvim/lua/plugins/snacks-animated-scrolling-off.lua ~/.config/nvim/lua/plugins/snacks-animated-scrolling-off.lua