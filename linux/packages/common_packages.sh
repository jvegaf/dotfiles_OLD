#!/bin/bash

## php 7.4
sudo apt -y install software-properties-common
#sudo add-apt-repository ppa:ondrej/php -y

sudo apt update
sudo apt upgrade -y
sudo apt-get -y install cargo php7.4-{cli,xml,bcmath,bz2,intl,gd,mbstring,mysql,zip} php-xdebug php-apcu tldr python3-pip filezilla gdebi transmission vlc build-essential fzf htop screenfetch openjdk-11-jdk composer wget docker.io docker-compose vim simplescreenrecorder rofi xclip xdotool grep coreutils locate
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

#emoji-menu       https://github.com/jchook/emoji-menu
wget 'https://bit.ly/emoji-menu'
chmod +x emoji-menu
sudo mv emoji-menu /usr/local/bin

#docker-clean
curl -s https://raw.githubusercontent.com/ZZROTDesign/docker-clean/v2.0.4/docker-clean |
sudo tee /usr/local/bin/docker-clean > /dev/null && \
sudo chmod +x /usr/local/bin/docker-clean

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

#nodejs
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install -y nodejs yarn

#dotNet 5
wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-5.0

#gitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt-get -f -y install
rm -rf gitkraken-amd64.deb

#docpars
cargo install docpars
cargo install exa
