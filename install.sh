#!/usr/bin/env bash

set -euo pipefail

echo "Installation starting..."

echo "Installing Git (PPA for updated version will be added during the software installation phase)"
sudo apt-get install -y git >/dev/null

echo "Cloning Dev Setup..."
git clone https://github.com/kyedavey/dev-setup.git /tmp/dev-setup >/dev/null

echo "Cloning .dotfiles..."
git clone https://github.com/kyedavey/.dotfiles.git ~/.dotfiles >/dev/null

if [[ -n "${WSL_DISTRO_NAME:-}" ]]; then
  echo "Installing terminal only setup"
  source /tmp/dev-setup/install/core.sh
else
  echo "Installing full desktop setup"
  source /tmp/dev-setup/install/desktop.sh
fi

echo "Installation Complete"
