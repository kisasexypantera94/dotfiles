# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/chingachgook/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting colored-man-pages)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:~/dev/go/bin
export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/bin:$PATH
export TERM="xterm-256color"

LANG="ru_RU.UTF-8"
LC_COLLATE="ru_RU.UTF-8"
LC_CTYPE="ru_RU.UTF-8"
LC_MESSAGES="ru_RU.UTF-8"
LC_MONETARY="ru_RU.UTF-8"
LC_NUMERIC="ru_RU.UTF-8"
LC_TIME="ru_RU.UTF-8"
LC_ALL=

# KEYTIMEOUT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

vscode () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

alias lc='colorls'

export VISUAL=nvim
export EDITOR="$VISUAL"
alias nvi="nvim -u ~/.vimrc"

adddate() {
    while IFS= read -r line; do
        echo "$(date) $line"
    done
}

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/anaconda3/bin/python
export PROJECT_HOME=$HOME/dev
# source /usr/local/anaconda3/bin/virtualenvwrapper.sh

# export PATH="$(brew --prefix sqlite)/bin:$PATH"
#
export GOPATH=$HOME/dev/go
export CGO_CPPFLAGS="-Wno-error -Wno-nullability-completeness -Wno-expansion-to-defined -Wno-builtin-requires-header"
export PATH=$PATH:$GOPATH/bin
alias godev='cd $GOPATH/src/github.com/kisasexypantera94'
alias cleandocker='docker rmi $(docker images | grep "^<none>" | awk '{print $3}') -f ; docker rm $(docker ps -aq)'
# export PATH="/usr/local/opt/llvm/bin:$PATH"

export PATH=$PATH:$HOME/.composer/vendor/bin

user=kisasexypantera94
export PATH="/usr/local/anaconda3/bin:$PATH"
# export CPATH=`xcrun --show-sdk-path`/usr/include

# export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/usr/local/anaconda3/include/python3.7m"

export PGP_PW="jA0yIU87Bq"

[ -f "/Users/chingachgook/.ghcup/env" ] && source "/Users/chingachgook/.ghcup/env" # ghcup-env
