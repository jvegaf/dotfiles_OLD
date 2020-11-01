#!/bin/bash

# upgrade all
sudo pacman --noconfirm -Syyu

sudo pacman --noconfirm -Syu \
  yay \
  base-devel \
  cargo \
  nodejs \
  npm \
  yarn \
  php \
  xdebug \
  php-apcu \
  tldr \
  transmission-gtk \
  fzf \
  htop \
  screenfetch \
  jdk11-openjdk \
  docker \
  docker-compose \
  vim \
  simplescreenrecorder \
  rofi \
  xclip \
  xdotool \
  grep \
  coreutils \
  rofimoji \
  tlp-rdw \
  tlpui

sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

yay --noconfirm -Syu \
  google-chrome \
  intellij-idea-ultimate-edition \
  gitkraken \
  docker-clean-git \
  code

cargo install docpars exa
