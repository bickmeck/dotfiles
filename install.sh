#!/bin/sh

zshrc() {
    echo "==========================================================="
    echo "             softlink aliases.zsh                          "
    echo "-----------------------------------------------------------"
    script_dir=$(dirname "$(readlink -f "$0")")
    ln -s $script_dir/aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh

    echo "==========================================================="
    echo "             cloning zsh-autosuggestions                   "
    echo "-----------------------------------------------------------"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    echo "==========================================================="
    echo "             installing oh-my-posh                         "
    echo "-----------------------------------------------------------"
    curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin

    echo "==========================================================="
    echo "             copying oh-my-posh config                     "
    echo "-----------------------------------------------------------"
    mkdir -p ~/.config/oh-my-posh
    cp "$script_dir/oh-my-posh-config.omp.json" ~/.config/oh-my-posh/config.omp.json

    echo "==========================================================="
    echo "                 Copy .zshrc to HOME                       "
    echo "-----------------------------------------------------------"
    cat .zshrc > $HOME/.zshrc
}

zshrc
