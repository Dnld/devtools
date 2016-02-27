################################################################################

# djs bash profile
# updated February 27, 2016
# https://github.com/Dnld/devtools/
  
################################################################################

# set paths
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/msql/bin:$PATH

# prompt
export PS1="\[\033[2m\]\W\$(parse_git_branch) $\[\033[0m\] "

# default editor
export EDITOR=/usr/bin/emacs

# environment shortcuts
alias bp="subl ~/.bash_profile"
alias c="clear"
alias c-="cd -"
alias cd..="cd ../"
alias ..="cd ../"
alias ...="cd ../../"
alias cp="cp -iv"
alias e="emacs"
alias f="open -a Finder ./"
alias ll="ls -lahG"
alias mk="mkdir -v"
alias mv="mv -iv"
alias oa="open -a"
alias pc="pbcopy"
alias pp="pbpaste"
alias rbp="source ~/.bash_profile"
alias rm="rm -iv"
alias t="touch"
alias v="vim"
function te() {
  touch "$1"
  emacs "$1"
}
function ts() {
  touch "$1"
  subl "$1"
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
function pwdc() {
  pwd | pbcopy
  pwd
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
alias das="open dash://"
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
alias cs="cd /Users/djs/development/hackreactor/career"
alias pd="cd /Users/djs/development/predictster"

# Chrome shortcuts
alias chr="open -a google\ chrome"
function cg() {
  chr "http://www.google.com/search?q= $1"
}
function hang() {
  open -a google\ chrome http://hangouts.google.com/start
  /usr/bin/osascript <<EOT
  tell application "System Events" 
    delay 3.5
    keystroke "l" using command down
    keystroke "c" using command down
  end tell
EOT
}

# Git shortcuts
alias ga="git add"
alias gaa="git add -A"
alias gad="git add ."
alias gb="git branch"
alias gbco="git checkout -b"
alias gc="git commit"
alias gcam="git commit -am"
alias gcamen="git commit --amend"
alias gcf="git config"
alias gcm="git commit -m"
alias gcl="git clone"
alias gco="git checkout"
alias gd="git diff"
alias gdt="open -a github\ desktop"
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
alias gpf="git push -f"
alias gpfo="git push -f origin"
alias gpfom="git push -f origin master"
alias gpl="git pull"
alias gpo="git push origin"
alias gpod="git push origin develop"
alias gpom="git push origin master"
alias gpu="git push"
alias gpuf="git push -f"
alias gpro="git pull --rebase origin"
alias gpru="git pull --rebase upstream"
alias gpum="git pull upstream master"
alias gr="git remote"
alias grao="git remote add origin"
alias grb="git rebase"
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

# MongoDB shortcuts
alias mdb="sudo /usr/local/Cellar/mongodb/3.0.6/bin/mongod"
alias mo="mongo"

#MySQL shortcuts
alias ms='mysql'
alias msa='mysqladmin'
alias mss='mysql.server'
alias msur="mysql -u root"

# Networking shortcuts
alias ports="sudo lsof -PiTCP -sTCP:LISTEN"

# Node shortcuts
alias no="node"
alias nd="node debug"
alias ndb="node --debug-brk"
alias nde="nodemon"
alias ni="node-inspector"

# CoffeeScript shortcuts
alias co="coffee"
alias coc="coffee -c"
alias cocomp="coffee --output compiled --map --watch --compile ./"
alias coo="coffee -c -o"

# Python shortcuts
alias pss="python -m SimpleHTTPServer"
alias py="python"

# Ruby / Rails shortcuts
alias rc="irb"
alias rg="rails generate"
alias rs="rails server"
alias ru="ruby"

# Safari shortcuts
alias saf="open -a safari"
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
