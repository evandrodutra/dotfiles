#!/bin/sh

export DOTFILES_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export OS="$(uname -s)"
export COMPUTER_NAME='evandrodutra'

# Ask for the administrator password upfront
sudo -v

function setup_osx() {
  sh $DOTFILES_ROOT/.macos
}

function setup_homebrew() {
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

function link_file() {
 if [ -e "$2" ]; then
   if [ "$(readlink "$2")" = "$1" ]; then
     echo "[INFO] Skipped, $1 already linked"
     return 0
   else
     mv "$2" "$2.backup"
     echo "[INFO] Moved $2 to $2.backup"
   fi
 fi
 ln -sf "$1" "$2"
 echo "[INFO] Linked $1 to $2"
}

function install_dotfiles() {
 echo ""
 if [ -d "$HOME/.dotfiles" ]; then
   echo "[INFO] Skipped, $HOME/.dotfiles already linked"
 else
   echo "[INFO] Linking $DOTFILES_ROOT to $HOME/.dotfiles"
   ln -s "$DOTFILES_ROOT" "$HOME/.dotfiles"
 fi

 set -e

 echo "[INFO] Installing dotfiles"
 find -H "$HOME/.dotfiles" -maxdepth 2 -name '*.symlink' -not -path '*.git*' |
   while read -r src; do
     dst="$HOME/.$(basename "${src%.*}")"
     link_file "$src" "$dst"
   done
}

setup_homebrew()
if [ $OS == "Darwin" ]; then
  setup_homebrew
  setup_osx

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  
  install_dotfiles
fi
