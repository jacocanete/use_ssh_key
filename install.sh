#!/bin/bash

INSTALL_DIR="$HOME/.local/bin"

# Ensure the install directory exists
mkdir -p "$INSTALL_DIR"

# Copy the script to the install location
cp use_ssh_key "$INSTALL_DIR/"

# Make it executable
chmod +x "$INSTALL_DIR/use_ssh_key"

# Add to PATH if not already present
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo "export PATH=\"$INSTALL_DIR:\$PATH\"" >>~/.bashrc
  echo "export PATH=\"$INSTALL_DIR:\$PATH\"" >>~/.zshrc
fi

echo "Installation complete. Run 'use_ssh_key [work|personal]' to switch SSH keys."
