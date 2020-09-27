#!/bin/bash

## php 7.4
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php -y

sudo apt update 
sudo apt upgrade -y
sudo apt-get install -y php7.4-{cli,xml,bcmath,bz2,intl,gd,mbstring,mysql,zip}
sudo apt-get -y install inkscape transmission git git-core zsh ubuntu-restricted-extras 
sudo apt-get -y install filezilla mysql-workbench neovim vlc mousepad build-essential 
sudo apt-get -y install htop screenfetch openjdk-11-jdk openjfx composer mongodb conky-all
sudo apt-get -y install wget docker.io docker-compose curl compizconfig-settings-manager
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker jose
export PATH="$PATH:/snap/bin"
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
rm -rf gitkraken-amd64.deb

#Github Desktop
wget https://github.com/shiftkey/desktop/releases/download/release-2.5.0-linux2/GitHubDesktop-linux-2.5.0-linux2.deb
sudo dpkg -i GitHubDesktop-linux-2.5.0-linux2.deb
rm -rf GitHubDesktop-linux-2.5.0-linux2.deb

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

#sudo apt-get -y install tlp tlp-rdw
#sudo apt-get -y install freecad kicad
#sudo tlp start
sudo snap install code --classic
sudo snap install phpstorm --classic
sudo snap install intellij-idea-ultimate --classic
