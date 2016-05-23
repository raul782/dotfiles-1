# TODO function
todo () {
  IFS_OLD="$IFS"
  IFS=$'\n'
  touch $(echo ~/Desktop/$@)
  IFS="$IFS_OLD"
}

alias reload!='. ~/.zshrc'

# convenience alias
alias zshconfig="$EDITOR ~/.zshrc"
alias dotconfig="$EDITOR ~/.dotfiles/ubuntu.zsh"

alias dotfiles="open $DOTFILES"

# easier navigation, copied from @mathiasbynens
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# OS-specific configuration
[[ $(uname -s) == 'Linux' ]] && source $ZSHFILES/aliases.ubuntu.zsh
[[ $(uname -s) == 'Darwin' ]] && source $ZSHFILES/aliases.osx.zsh
[[ $(uname -s) == MINGW32_* ]] && source $ZSHFILES/aliases.win32.zsh
