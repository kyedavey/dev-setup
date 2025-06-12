# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Symlink Bash Config
~/.dotfiles/dotfiles.sh -f install bash

for installer in /tmp/dev-setup/install/core/*.sh; do source $installer; done
for installer in /tmp/dev-setup/install/desktop/*.sh; do source $installer; done

# Set gnome bar apps
gsettings set org.gnome.shell favorite-apps "['Alacritty.desktop', 'google-chrome.desktop',  'code.desktop']"

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300
