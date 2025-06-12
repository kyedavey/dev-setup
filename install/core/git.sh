echo "Installing Git"
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y git

~/.dotfiles/dotfiles.sh -f install git
