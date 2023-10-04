#!/bin/sh

zshrc() {
    echo "==========================================================="
    echo "             softlink aliases.zsh                          "
    echo "-----------------------------------------------------------"
# Get the directory in which this script lives.
    script_dir=$(dirname "$(readlink -f "$0")")
    ln -s $script_dir/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh
    echo "==========================================================="
    echo "             cloning zsh-autosuggestions                   "
    echo "-----------------------------------------------------------"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    echo "==========================================================="
    echo "                 Copy .zshrc to HOME                       "
    echo "-----------------------------------------------------------"
    cat .zshrc > $HOME/.zshrc
}

zshrc