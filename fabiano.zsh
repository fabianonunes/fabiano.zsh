path+=("$HOME/bin" "$HOME/.cargo/bin" "$HOME/.npm-g/bin")

setxkbmap -option ctrl:nocaps

bindkey "${key[Up]}" history-beginning-search-backward
bindkey "${key[Down]}" history-beginning-search-forward

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern root cursor)
ZSH_HIGHLIGHT_STYLES[globbing]='fg=magenta,bold'

function o {
  xdg-open "$@" &> /dev/null
}

alias ack=ack-grep
alias reswap="sudo bash -c \"swapoff -a && rmmod zram && service zram-config restart\""
