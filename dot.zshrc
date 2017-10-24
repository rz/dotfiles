# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ysrz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/usr/X11/bin:/usr/local/sbin

source /usr/local/bin/virtualenvwrapper.sh

# cooler glob
setopt extendedglob

alias ll='ls -lh'

alias pygrep='grep -Rn --include="*.py" --exclude="*.pyc"'
alias rmpyc='find . -name "*.pyc" -delete'

alias tree='tree -C'
alias vs='vagrant ssh'

# also look at ~/.zshenv for aliases, functions, that are common to all zsh
# invocations. e.g. when invoked without interactive mode.

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# fix for psql, so that it doesn't require -h localhost
export PGHOST=/tmp
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

# Get default working directory
alias setd='echo `pwd` > ~/._dir'
alias getd='cd `cat ~/._dir`'
if [ -f ~/._dir ]; then
    getd
fi

# Get/set default virutalenv
alias setv='[ -z $VIRTUAL_ENV ] && echo '' > ~/._venv || basename $VIRTUAL_ENV > ~/._venv'
alias getv='workon `cat ~/._venv`'
if [ -f ~/._venv ]; then
    getv
fi

alias setdv="setd && setv"
alias setvd=setdv

alias ischeme="rlwrap scheme"
function cdsrc() {
  cd "/Users/rz/Dropbox/src/$1"
}

# OPAM configuration
. /Users/rz/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval `opam config env`


# Add rbenv to bash so that it loads every time you open a terminal
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# android sdk for react native
export ANDROID_HOME=/usr/local/opt/android-sdk
