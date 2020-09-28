#!/bin/bash

## php 7.4
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php -y

sudo apt update 
sudo apt upgrade -y
sudo apt-get install -y php7.4-{cli,xml,bcmath,bz2,intl,gd,mbstring,mysql,zip}
sudo apt-get install -y php-xdebug php-pacl openjdk-11-jdk usb-creator-gtk
sudo apt-get install -y transmission git git-core zsh python3-pip
sudo apt-get install -y filezilla vim vlc build-essential gdebi cargo
sudo apt-get install -y htop screenfetch composer curl gnome-sushi
sudo apt-get install -y wget docker.io docker-compose curl gnome-tweaks
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
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

#gitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt-get -f -y install
rm -rf gitkraken-amd64.deb

# Albert
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt-get update
sudo apt-get -y install albert

#Github Desktop
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
sudo apt-get update
sudo apt-get install -y github-desktop

#docpars
cargo install docpars
export PATH="$PATH:$HOME/.cargo/bin"

sudo snap install code --classic
sudo snap install intellij-idea-ultimate --classic

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

