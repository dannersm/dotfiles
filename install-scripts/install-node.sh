#!/bin/bash

# Exit on any error
set -e

# Function to print in green
print_success() {
  echo -e "\033[0;32m$1\033[0m"
}

# Install NVM
print_success "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Load NVM (make available in this script)
export NVM_DIR="$HOME/.nvm"
# shellcheck source=/dev/null
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install latest LTS version of Node.js (includes npm)
print_success "Installing latest LTS version of Node.js..."
nvm install --lts

# Use the installed Node.js version
nvm use --lts

# Check versions
print_success "Node version:"
node -v

print_success "npm version:"
npm -v

print_success "NVM, Node.js, and npm installed successfully."

