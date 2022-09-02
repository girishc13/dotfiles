# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

# Path to your oh-my-zsh installation.
export ZSH="/Users/gchandrashek/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  gitfast
  httpie
  jsontools
  yarn
  sbt 
  scala
  python
  pyenv
  pip
  npm
  history
  docker
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# aliases

# dotfiles git repo (https://www.atlassian.com/git/tutorials/dotfiles)
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias zaws-cutie="zaws require cutie PowerUser"
alias zaws-flash="zaws require flash PowerUser"
alias zk-st="zkubectl login search-test"
alias zk-s="zkubectl login search"
alias code-dir="cd ~/Documents/Code"
alias glc="git log -1 | cat"
alias zk-ft="zkubectl -n flash-test"
alias zk-pantest="zkubectl -n pandora-test"
alias zk-pt="zkubectl -n poirot-test"
alias zk-lt="zkubectl -n lens-test"
alias zk-spt="zkubectl -n spellcheck-test"
alias zk-f="zkubectl -n flash"
alias zk-p="zkubectl -n poirot"
alias zk-pan="zkubectl -n pandora"
alias zk-l="zkubectl -n lens"
alias stern-ft-pythia="stern --namespace flash -l application=stg-pythia-flash"
alias stern-f-pythia="stern --namespace flash -l application=live-pythia-flash"
alias zk-al="zkubectl cluster-access list"
function zk-rq() {
    zkubectl cluster-access request $1
}
alias ztoken-test="ztoken token -n sandbox -t https://sandbox.identity.zalando.com/oauth2/token -p 810d1d00-4312-43e5-bd31-d8373fdd24c7 -a https://sandbox.identity.zalando.com/oauth2/authorize"
alias kibana-start="~/Documents/Code/other/kibana-docker/start_kibana.sh localhost"
alias kibana-stop="~/Documents/Code/other/kibana-docker/stop_kibana.sh"
alias zk-xp="zkubectl -n es-xpack"
function cs() { curl -m 7 "http://cheat.sh/$1"; }

bindkey -v
set editing-mode vi
set blink-matching-paren on

ITERM_CURSOR=true

export JAVA8_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/
export JAVA11_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home/
export JAVA12_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-12.jdk/Contents/Home/
export JAVA_HOME="$JAVA11_HOME"
export LUKE_PATH=/Users/gchandrashek/Documents/Code/other/lucene-8.5.0/luke

# python
export PYTHONPATH=/Users/gchandrashek/Library/Python/3.8/bin
#poetry
export PATH="$HOME/.poetry/bin:$PATH"

export PATH=$LUKE_PATH:$PYTHON_PATH:JAVA_HOME/bin:$PATH
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export SBT_OPTS="-Xmx3G"

export GEM_HOME=/Users/gchandrashek/gems
export PATH=/Users/gchandrashek/Library/Python/3.8/bin:/Users/gchandrashek/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Wireshark.app/Contents/MacOS:$PATH

# origami utils
export PATH="$PATH:/Users/gchandrashek/Documents/Code/lens/origami/utils"

# Golang
export GOPATH="/Users/gchandrashek/Documents/Code/golang"
export PATH="$PATH:/Users/gchandrashek/Documents/Code/golang/bin"
export GO111MODULE=on

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gchandrashek/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gchandrashek/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gchandrashek/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gchandrashek/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

#gpg
export PATH="/usr/local/opt/ncurses/bin:$PATH"

#maven
export MAVEN_USER=gchandrashek
export MAVEN_PASSWORD=ZalandoFeb21
export GPG_TTY=$(tty)

export PATH="/usr/local/sbin:$PATH"

# fzf nvim plugged directory
export PATH="$PATH:/Users/gchandrashek/.config/nvim/plugged/fzf/bin"
