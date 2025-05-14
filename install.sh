set -e

echo "Installation starting..."

echo "Installing Git..."
sudo add-apt-repository -y ppa:git-core/ppa >/dev/null
sudo apt-get update >/dev/null
sudo apt-get install -y git curl >/dev/null

echo "Cloning Dev Setup..."
git clone https://github.com/kyedavey/dev-setup.git ~/code/dev-setup >/dev/null

# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run installers
for installer in ~/code/dev-setup/install/*.sh; do source $installer; done

gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'Alacritty.desktop', 'code.desktop']"

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

echo "Installation complete"