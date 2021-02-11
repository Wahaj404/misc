#!/bin/bash

# wget https://raw.githubusercontent.com/Wahaj404/rand/master/install.sh | bash -s


echo "Fetching updates"
sudo apt-get update -qq > /dev/null && sudo apt-get upgrade -qq > /dev/null

echo "Installing curl and git"
sudo apt-get install curl git

echo "Installing vscode"
sudo snap install --classic code

echo "Installing C/C++ toolchain"
sudo apt-get install -qq gcc g++ gdb make > /dev/null

echo "Installing python"
sudo apt-get install -qq python > /dev/null

echo "Installing Node.js and yarn"
sudo apt-get remove -qq cmdtest > /dev/null
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get install -qq nodejs yarn > /dev/null

echo "Installing postgresql"
sudo apt-get install -qq postgresql > /dev/null

echo "Installing the z-command"
sudo curl -o ~/.z-command/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh

echo "Installing zsh and ohmyzsh"
sudo apt-get install -qq zsh > /dev/null
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Cloning custom .zshrc"
sudo curl -o ~/.zshrc https://raw.githubusercontent.com/Wahaj404/rand/master/.zshrc 

sudo apt-get autoremove -qq > /dev/null

echo "Changing default shell to zsh"
echo "Please enter /bin/zsh for shell path when prompted"
chsh
