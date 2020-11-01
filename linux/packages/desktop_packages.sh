#!/bin/bash

sudo pacman -Syu ddcutil

sudo cp -R $DOTFILES_PATH/linux/configs/nvidia_desktop/xorg.conf.d /etc/X11/

sudo cp $DOTFILES_PATH/linux/configs/nvidia_desktop/60-i2c-tools.rules /lib/udev/rules.d/
