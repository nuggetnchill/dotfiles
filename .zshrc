export PATH=$PATH:~/go/bin/

pokeget random | fastfetch --logo-height 20 --logo-width 5 --file-raw - 
# pokeget ditto | fastfetch --file-raw -

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit /var/folders/8h/rqtdvvtn4fbfvhc303qhwqc80000gn/T/vscode-zsh/.p10k.zsh.
[[ ! -f /var/folders/8h/rqtdvvtn4fbfvhc303qhwqc80000gn/T/vscode-zsh/.p10k.zsh ]] || source /var/folders/8h/rqtdvvtn4fbfvhc303qhwqc80000gn/T/vscode-zsh/.p10k.zsh

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


source /Users/nugget/.docker/init-zsh.sh || true # Added by Docker Desktop

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

#for powerlevel10k to run
source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
