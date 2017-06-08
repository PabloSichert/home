#!/bin/bash

# hr: create a line of dashes as wide as your terminal.
# adopted from: https://github.com/LuRsT/hr/blob/master/hr
hr() {
  local LINE=''
  while (( ${#LINE} < "$(tput cols)" ))
  do
    LINE="$LINE-"
  done

  echo "${LINE}"
}

# Install Homebrew
echo "Installing: brew"
if ! type brew &>/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

hr

# Install Homebrew Cask
echo "Installing: brew cask"
brew cask >/dev/null

hr

# Install Atom
echo "Installing: atom"
brew cask install atom

hr

source ~/setup/atom-packages.sh

hr

# Install n
echo "Installing: n"
if ! type n &>/dev/null; then
  DIR=~/Github/tj
  mkdir -p $DIR
  cd $DIR
  git clone https://github.com/tj/n
  cd n
  make install
fi

hr

# Install yarn
echo "Installing: yarn"
brew install yarn --ignore-dependencies