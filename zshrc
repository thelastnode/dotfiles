# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source /etc/profile
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/lib/perl5/vendor_perl/bin:/usr/bin/perlbin/vendor:/usr/lib/perl5/core_perl/bin

export EDITOR=vim

# Aliases
alias sudo='sudo -u ankit sudo '
alias less='less -R'

alias v='vim --remote '
alias vimserver='vim --servername VIM '

alias bc='bc -l'

alias tmux='tmux -2'

if [ -f env/bin/activate ]; then
    . env/bin/activate
fi
