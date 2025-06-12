~/.dotfiles/dotfiles.sh -f install bash

for installer in /tmp/dev-setup/install/core/*.sh; do source $installer; done
