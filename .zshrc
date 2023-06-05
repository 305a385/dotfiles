PS1='%F{red}%n%f %F{green}%~%f %# '

alias 'ls'='ls --color=auto'
alias 'll'='ls -lh --color=auto'
alias 'la'='ls -A --color=auto'

alias '$'=''
alias '##'='sudoedit'
alias 's'='sudo systemctl'
alias 'pac'='sudo pacman'
alias '#'='sudo'

alias 'redyt'="$HOME/redyt/redyt"

export PATH="$PATH:$HOME/.local/bin"
export EDITOR="vim"
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# keep at end of file
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
