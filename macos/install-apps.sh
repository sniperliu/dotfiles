#!/bin/bash

echo Install applications

set -e

# Xcode command tools
if [[ $(xcode-select --version) ]]; then
  echo Xcode command tools already installed
else
  echo "Installing Xcode commandline tools"
  $(xcode-select --install)
fi

if [[ $(brew --version) ]] ; then
    echo "Attempting to update Homebrew"
    brew update
else
    echo "Attempting to install Homebrew"
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | sh
fi

# brew
echo "Brew update & cleanup"
brew update && brew cleanup

echo "Brew bundle install"
brew bundle --global install

# zsh & oh my zsh
if [ ! -d ~/.oh-my-zsh ]; then
  echo "Install Oh My Zsh"
  curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
fi

# Rust
echo "Install rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rls
rustup component add rust-analysis
rustup component add rust-src

# app store
softwareupdate -i -a

echo '1. Execute this to add ssh key (w/passphrase) to keychain:  ssh-add -K ~/.ssh/id_rsa'
echo '2. Then git config --global user.name "Your Name"'
echo '3. Then git config --global user.email "Your_Email@...com"'
echo '4. Create a git Personal Access token, then:  "hub browse" and enter git user and Access token to configure hub to use that'
echo '5. Configure dropbox accounts'
echo '6. Configure Slack accounts'
echo '7. Configure nvalt storage backend'
echo '8. Install Air Mail from App Store and configure accounts'
echo '9. Add Bartender license, configure bartender'
echo '10. Configure 1Password vaults'
echo '11. Install IDEs'
echo '12. Add cdto to finder toolbar:   Drag Applications/cd to.app onto the Finder toolbar while holding down the command(⌘) and option(⌥) keys'
echo '13. Configure ARQ'
echo '14. Configure Carbon Copy cloner'
