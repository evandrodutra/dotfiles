#!/bin/sh

export DOTFILES_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export OS="$(uname -s)"
export COMPUTER_NAME='marvin'

# Ask for the administrator password upfront
sudo -v

setup_homebrew() {
  echo ""
  if test $(which brew); then
    echo "[INFO] Skipped, Homebrew already installed"
  else
    echo "[INFO] Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  brew tap homebrew/bundle

  echo ""
  echo "[INFO] Installing Essencial Command Line Tools and Apps..."

  brew bundle --file=$DOTFILES_ROOT/Brewfile
  brew cleanup
}

setup_osx() {
  sh $DOTFILES_ROOT/osx.sh
}

if [ $OS == "Darwin" ]; then
  setup_homebrew()
  setup_osx()
fi
