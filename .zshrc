# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="chris"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias bi="bundle install"
alias be="bundle exec"
alias csd="bundle exec cap staging deploy"
alias gp="git pull && git push"
alias gch="git checkout"
alias gcm="git checkout master"
alias gcd="git checkout develop"
alias gs="git status"
alias gco="git commit"
alias gpl="git pull"
alias gps="git push"
alias gst="git status"
alias gco="git commit"
alias gb="git branch"
alias gch="git checkout"
alias grm="git rebase master"
alias dbprep="(bin/rake db:migrate || bundle exec rake db:migrate) && (bin/rake db:test:prepare || bundle exec rake db:test:prepare)"
alias pspec="bundle exec rake parallel:spec"
alias pdbprep="bundle exec rake parallel:prepare"
alias runtests="rspec && cucumber --require features features --tags ~@incomplete"
alias rc='bin/rails c || bundle exec rails c'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pgstart='pg_ctl -D /usr/local/var/postgres start -s -m fast'
alias glocaldelete='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gg='git log --pretty=oneline --abbrev-commit --graph --decorate'
alias gga='git log --pretty=oneline --abbrev-commit --graph --decorate --all'

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

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
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



# added by travis gem
[ -f /Users/chris/.travis/travis.sh ] && source /Users/chris/.travis/travis.sh
export BUNDLER_EDITOR=vi

source /usr/local/share/zsh/site-functions/_aws
