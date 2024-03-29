#!/bin/user/env bash

install_macos_custom() {
  # Install brew if not installed
  if ! [ -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  # All apps (This line is 2 times because there are dependencies between brew cask and brew)
  brew bundle --file="$DOTFILES_PATH/mac/brew/Brewfile" || true
  brew bundle --file="$DOTFILES_PATH/mac/brew/Brewfile"

  # Correct paths (so, we handle all with $PATH)
  sudo truncate -s 0 /etc/paths

  # Custom macOS "defaults"
  sh "$DOTFILES_PATH/mac/mac-os.sh"
}

install_linux_custom() {
  #DISTRO=cat /var/log/installer/media-info | cut -d' ' -f 1
  echo "packages installed previously"
  # bash "$DOTFILES_PATH/os/linux/packages/xBuntu/common_packages.sh"
  #bash "$DOTFILES_PATH/linux/packages/xubuntu.sh"
}

install_linux_deps(){
  #bash "$DOTFILES_PATH/linux/packages/common_packages.sh"
}
