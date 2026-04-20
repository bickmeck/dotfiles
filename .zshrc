export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Oh-My-Posh initialisieren (nach oh-my-zsh!)
if command -v oh-my-posh &> /dev/null; then
  eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/config.omp.json)"
fi
