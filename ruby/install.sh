#!/bin/sh

if [ $OS == "Darwin" ]; then
  if test $(which rvm); then
    echo "[INFO] Skipped, RVM already intalled"
  else
    bash_profile="$DOTFILES_ROOT/locals/bash_profile.symlink"

    echo "[INFO] Installing RVM ..."
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    \curl -sSL https://get.rvm.io | bash -s stable

    echo "" >> $bash_profile
    echo "# RVM" >> $bash_profile
    echo "export PATH=\"$PATH:$HOME/.rvm/bin\"" >> $bash_profile
    echo "[[ -s \"$HOME/.rvm/scripts/rvm\" ]] && source \"$HOME/.rvm/scripts/rvm\"" >> $bash_profile
  fi
fi
