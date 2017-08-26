# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="cloud"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

ZSH_CUSTOM=~/.oh-my-zsh/custom/

plugins=(git vim-mode autojump docker zsh-curl-completion)

# Need brew install zsh-autosuggestions zsh-syntax-highlighting zsh-git-prompt
# run "brea search zsh" could find out more zsh plugins
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/zsh-git-prompt/zshrc.sh

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

bindkey -v
bindkey '^R' history-incremental-pattern-search-backward

# Do not share history cross zsh sessions
unsetopt share_history

fpath=(/usr/local/share/zsh-completions $fpath)

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

SCALA_HOME=$HOME/Developers/scala-2.11.7

JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home

JAVA_HOME=$JAVA8_HOME

#set -x GEM_HOME $HOME/Developers/ruby

export PATH=$HOME/bin:/usr/local/bin:$HOME/Developers/sbt-0.13.9/bin:$JAVA_HOME/bin:$SCALA_HOME/bin:$HOME/Developers/scripts:$HOME/Developers/groovy-2.4.3/bin::$PATH
export PATH=$HOME/Developers/sonar-runner-2.4/bin:$HOME/Developers/oclint-0.9.dev/bin:$GEM_HOME/bin:$PATH
export PATH=$HOME/Developers/sqlshell/bin:$PATH

export EDITOR=vim

alias vi=vim
#Applications/MacVim.app/Contents/MacOS/vim
#alias vim=/Applications/MacVim.app/Contents/MacOS/vim

#PROMPT='%B%m%~%b$(git_super_status) %# '
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_super_status)'

gpy() {
  curr_branch=`current_branch`
  echo "push to yanbin ${curr_branch} $1"
  git push yanbin $curr_branch $1
}

gpo() {
  curr_branch=`current_branch`
  echo "push to origin ${curr_branch} $1"
  git push origin $curr_branch $1
}
