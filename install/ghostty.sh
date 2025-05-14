GHOSTTY_DEB_URL=$(
   curl -s https://api.github.com/repos/mkasberg/ghostty-ubuntu/releases/latest | \
   grep -oP "https://github.com/mkasberg/ghostty-ubuntu/releases/download/[^\s/]+/ghostty_[^\s/_]+_${SUFFIX}.deb"
)
if [[ -z "$GHOSTTY_DEB_URL" ]]; then
  echo "Error: Failed to retrieve the .deb package URL from GitHub."
  exit 1
fi
GHOSTTY_DEB_FILE=$(basename "$GHOSTTY_DEB_URL")

echo "Downloading ${GHOSTTY_DEB_FILE}..."
curl -LO "$GHOSTTY_DEB_URL"

echo "Installing ${GHOSTTY_DEB_FILE}..."
sudo dpkg -i "$GHOSTTY_DEB_FILE"
rm "$GHOSTTY_DEB_FILE"

mkdir -p ~/.config/ghostty
ln -fs ~/code/dev-setup/configs/ghostty/config ~/.config/ghostty/config