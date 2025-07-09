#!/bin/bash

set -e  # Stop execution on error

echo "🔧 Installing Xcode Command Line Tools..."
xcode-select --install 2>/dev/null || echo "✅ Xcode Command Line Tools already installed."

echo "🍺 Installing Homebrew..."
if ! command -v brew &> /dev/null; then
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "✅ Homebrew already installed."
fi

echo "📦 Installing Ansible..."
brew install ansible || echo "✅ Ansible already installed."

