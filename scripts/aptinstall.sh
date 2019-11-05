#!/bin/bash

sudo apt-get update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt-get install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

install curl
install git
install tmux
install vim
install ruby-full
install gcc make
install python3
