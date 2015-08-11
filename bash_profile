################################################################################

# djs bash profile
# updated August 10, 2015
# https://github.com/Dnld/devtools/

################################################################################

# set paths
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/msql/bin:$PATH

# prompt
export PS1="\[\033[2m\]\W\$(parse_git_branch) \u$\[\033[0m\] "

# default editor
export EDITOR=/usr/bin/nano

# environment shortcuts
alias bp="s ~/.bash_profile"
alias c="clear"
alias cd..="cd ../"
alias ..="cd ../"
alias ...="cd ../../"
alias cp="cp -iv"
alias e="nano"
alias f="open -a Finder ./"
alias ll="ls -lahG"
alias mkdir="mkdir -v"
alias mv="mv -iv"
alias oa="open -a"
alias rbp="source ~/.bash_profile"
alias rm="rm -iv"
alias t="touch"
function ts() {
  t "$1"
  s "$1"
}
function cdf() {
  currFolderPath=$( /usr/bin/osascript <<EOT
    tell application "Finder"
      try
    set currFolder to (folder of the front window as alias)
      on error
    set currFolder to (path to desktop folder as alias)
      end try
      POSIX path of currFolder
    end tell 
EOT
  )
  cd "$currFolderPath"
}
function mc() {
  mkdir "$1"
  cd "$1"
}

# search shortcuts
function agl() {
  ag "$1" -l
}
function ff() {
  find . -name "$1"
}
function ffa() {
  find . -name "$1"'*'
}
function ffe() {
  find . -name '*'"$1"
}

# application shortcuts
alias act="open -a activity\ monitor"
alias cal="open -a calendar"
alias con="open -a contacts"
alias itu="open -a itunes"
alias mai="open -a mail"
alias mes="open -a messages"
alias pho="open -a photos"
alias rem="open -a reminders"
alias sim="open -a simplenote"
alias sla="open -a slack"
alias twe="open -a tweetbot"

# navigational shortcuts
alias ~="cd ~"
alias desk="cd ~/Desktop"
alias dev="cd ~/development"
alias doc="cd ~/Documents"
alias down="cd ~/Downloads"

# temporary shortcuts
alias hr="cd /Users/djs/development/hackreactor"
alias pw="cd /Users/djs/development/hackreactor/prework"
alias sp="cd /Users/djs/development/hackreactor/sprints"
alias tp="cd /Users/djs/development/hackreactor/toyproblems"

# Chrome shortcuts
alias chr="open -a Google\ Chrome"
function cg() {
  chr "http://www.google.com/search?q= $1"
}

# Git shortcuts
alias ga="git add"
alias gaa="git add -A"
alias gad="git add ."
alias gb="git branch"
alias gc="git commit"
alias gcam="git commit -am"
alias gcamen="git commit --amend"
alias gcf="git config"
alias gcm="git commit -m"
alias gcl="git clone"
alias gco="git checkout"
alias gd="git diff"
alias gf="git fetch"
alias gh="git help" 
alias gi="git init"
alias gk="gitk"
alias gl="git log"
alias gll="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias glll="gll --all"
alias gmc="git commit -m"
alias gmg="git merge"
alias gmv="git mv"
alias gpl="git pull"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gpu="git push"
alias gpum="git pull upstream master"
alias gr="git remote"
alias grao="git remote add origin"
alias grau="git remote add upstream"
alias grm="git rm"
alias grs="git reset"
alias grv="git revert"
alias gs="git status -s"
alias gss="git status"
alias gt="git tag"
alias gx="gitx"
alias get="git"
alias got="git"

# Node shortcuts
alias n="node"
alias nd="node debug"
alias ndb="node --debug-brk"
alias ni="node-inspector"

# Python shortcuts
alias pss="python -m SimpleHTTPServer"
alias py="python"

# Ruby / Rails shortcuts
alias rc="irb"
alias rg="rails generate"
alias rs="rails server"
alias ru="ruby"

# Safari shortcuts
alias saf="open -a Safari"
function sg() {
  saf "http://www.google.com/search?q= $1"
}

# Sublime shortcuts
alias s="subl"
alias s.="subl ."
alias s2="sublime"
alias s2.="sublime ."

# Xcode shortcuts
alias xco="open -a xcode"

# Git branch in prompt
function parse_git_branch() {
  git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/"
}

# Node path
export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

# load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

################################################################################
