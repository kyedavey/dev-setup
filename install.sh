#!/usr/bin/env bash

set -euo pipefail

echo "Installation starting..."

echo "Installing Git..."
sudo add-apt-repository -y ppa:git-core/ppa >/dev/null
sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Dev Setup..."
git clone https://github.com/kyedavey/dev-setup.git /tmp/dev-setup >/dev/null

echo "Cloning .dotfiles..."
git clone http://github.com/kyedavey/.dotfiles.git ~/.dotfiles >/dev/null

if [[ -n "$WSL_DISTRO_NAME" ]]; then
  echo "Installing terminal only setup"
  source /tmp/dev-setup/install/core.sh
else
  echo "Installing full desktop setup"
  source /tmp/dev-setup/install/desktop.sh
fi

echo "Installation Complete"
