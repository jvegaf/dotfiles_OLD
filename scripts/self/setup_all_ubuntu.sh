#!/bin/bash

## php 7.4
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php -y

wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - 
sudo add-apt-repository 'deb https://apt.corretto.aws stable main'

sudo apt update 
sudo apt upgrade -y
sudo apt-get install -y php7.4-{cli,xml,bcmath,bz2,intl,gd,mbstring,mysql,zip}
sudo apt-get install php-xdebug php-pacl java-1.8.0-amazon-corretto-jdk
sudo apt-get -y install inkscape transmission git git-core zsh 
sudo apt-get -y install filezilla vim vlc build-essential
sudo apt-get -y install htop screenfetch composer curl gnome-sushi
sudo apt-get -y install wget docker.io docker-compose curl gnome-tweaks
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
#docker-clean
curl -s https://raw.githubusercontent.com/ZZROTDesign/docker-clean/v2.0.4/docker-clean |
sudo tee /usr/local/bin/docker-clean > /dev/null && \
sudo chmod +x /usr/local/bin/docker-clean

#nodejs
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update 
sudo apt-get install -y nodejs yarn
#gitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt-get -f install
rm -rf gitkraken-amd64.deb

#Github Desktop
wget https://github.com/shiftkey/desktop/releases/download/release-2.5.0-linux2/GitHubDesktop-linux-2.5.0-linux2.deb
sudo dpkg -i GitHubDesktop-linux-2.5.0-linux2.deb
sudo apt-get -f install
rm -rf GitHubDesktop-linux-2.5.0-linux2.deb

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

sudo snap install code --classic
sudo snap install intellij-idea-ultimate --classic
