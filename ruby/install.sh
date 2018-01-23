#!/bin/sh

export OS="$(uname -s)"

if [ $OS == "Darwin" ]; then
  if test $(which rvm); then
    echo "[INFO] Skipped, RVM already intalled"
  else
    bash_profile="/Users/evandrodutra/.bash_profile"

    echo "[INFO] Installing RVM ..."
    curl -sSL https://rvm.io/mpapis.asc | gpg --import -
    \curl -sSL https://get.rvm.io | bash -s stable

    echo "" >> $bash_profile
    echo "# RVM" >> $bash_profile
    echo "export PATH=\"$PATH:$HOME/.rvm/bin\"" >> $bash_profile
    echo "[[ -s \"$HOME/.rvm/scripts/rvm\" ]] && source \"$HOME/.rvm/scripts/rvm\"" >> $bash_profile
  fi
fi
