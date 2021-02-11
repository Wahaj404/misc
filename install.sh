#!/bin/bash

# wget https://raw.githubusercontent.com/Wahaj404/rand/master/install.sh | bash -s

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install curl git

# vscode
sudo snap install --classic code

# c/c++
sudo apt-get install -y gcc g++ gdb make

# python
sudo apt-get install -y python

# nodejs and yarn
sudo apt-get remove -y cmdtest
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get install -y nodejs yarn

# postgresql
sudo apt-get install -y postgresql

# z-command
sudo curl -o ~/.z-command/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh

# zsh and ohmyzsh
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# custom .zshrc
sudo curl -o ~/.zshrc https://raw.githubusercontent.com/Wahaj404/rand/master/.zshrc 

sudo apt-get autoremove -y

# To change default shell to zsh, run 'chsh' and change to /bin/zsh
