#!/bin/bash

# Update and install necessary packages
sudo apt update
sudo apt install -y curl wget 

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Source .bashrc to load nvm
source ~/.bashrc

# Load nvm into the current shell session
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install Node.js version 16
nvm install 16

# Set Node.js version 16 as the default version
nvm use 16
nvm alias default 16

# Verify the installation
node -v
npm -v
