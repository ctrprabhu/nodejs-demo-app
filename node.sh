#!/bin/bash

# Update and install necessary packages
sudo apt update
sudo apt install -y curl wget 

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Source .bashrc to load nvm
. $HOME/.bashrc

# Load nvm into the current shell session
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

. $HOME/.bashrc
# Install Node.js version 16
nvm install 20

# Set Node.js version 16 as the default version
nvm use 20
nvm alias default 20

# Verify the installation
node -v
npm -v

npm install
npm fund
npm audit fix
npm start
