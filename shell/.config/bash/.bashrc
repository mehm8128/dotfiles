export GPG_TTY=$(tty)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# This doesn't work on Warp because keybinding seems to be overwritten by the terminal.
#_fzf_z_repository() {
#  z $(ghq list -p | fzf)
#}
#
#bind -x '"\C-g": _fzf_z_repository'

alias gg='ghq get'
alias gp='git pull'
alias nd='nr dev'
alias gco='git checkout $(git branch -a | cut -c 3- | sed "s/^remotes\/[0-9a-zA-Z_-]\+\///" | awk '\''!a[$0]++'\'' | fzf)'
alias gbrdl='git fetch -p && git branch -vv | grep ": gone]" | awk "{print \$1}" | xargs -I {} git branch -D {}'
alias j='z $(ghq list -p | fzf)'
alias vi="nvim"
alias vim="nvim"

eval "$(~/.local/bin/mise activate bash)"
eval "$(zoxide init bash)"
