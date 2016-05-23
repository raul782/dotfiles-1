source $HOME/.zplug/zplug

# Make sure you use double quotes
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"

# Support oh-my-zsh plugins and the like
zplug "lib/git", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh

zplug "plugins/git",   from:oh-my-zsh, if:"which git"
zplug "plugins/git-extras", from:oh-my-zsh, if:"which git"
zplug "plugins/tmuxinator", from:oh-my-zsh
zplug "plugins/gnu-utils", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh

# zplug "plugins/last-working-dir", from:oh-my-zsh

# For SSH, starting ssh-agent is annoying
zplug "plugins/ssh-agent", from:oh-my-zsh
zplug "rupa/z"
#zplug "b4b4r07/enhancd", of:enhancd.sh
# Node Plugins
#zplug "plugins/coffee", from:oh-my-zsh
#zplug "plugins/node", from:oh-my-zsh
#zplug "plugins/npm", from:oh-my-zsh

# Node Plugins
zplug "plugins/nvm", from:oh-my-zsh

# Python Plugins
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/virtualenv", from:oh-my-zsh

# Php Plugins
zplug "plugins/capistrano", from:oh-my-zsh
zplug "plugins/symfony2", from:oh-my-zsh
zplug "plugins/composer", from:oh-my-zsh

zplug "themes/agnoster", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load #--verbose

source $DOTFILES/zsh/agnork.zsh-theme
