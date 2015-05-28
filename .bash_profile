# set paths
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/msql/bin:$PATH

# prompt
export PS1="\W\$(parse_git_branch) \u$ "

# source
source ~/.profile

# default editor
export EDITOR=/usr/bin/nano

# environment shortcuts
alias ~="cd ~"
alias bp="s ~/.bash_profile"
alias cd..="cd ../"
alias ..="cd ../"
alias ...="cd ../../"
alias c="clear"
alias desk="cd ~/Desktop"
alias dev="cd ~/development"
alias f="open -a Finder ./"
alias ll="ls -lahG"
alias n="nano"
alias t="touch"
alias rbp="source ~/.bash_profile"

# Chrome open HTML file
alias chr="open -a 'Google Chrome'"

# Git shortcuts
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gcl="git clone"
alias gco="git checkout"
alias gd="git diff"
alias gi="git init"
alias gmg="git merge"
alias gpu="git push"
alias gpl="git pull"
alias gpom="git push origin master"
alias gpum="git pull upstream master"
alias gr="git remote"
alias grao="git remote add origin"
alias grau="git remote add upstream"
alias gs="git status"

# Python shortcuts
alias pss='python -m SimpleHTTPServer'

# Rails shortcuts
alias rc="rails console"
alias rg="rails generate"
alias rs="rails server"

# Sublime shortcuts
alias s="sublime"

# Xcode shortcuts
alias xco='open -a /Applications/Xcode.app'

# Git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# setting path for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# setting path for Python 3.3
# the orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

# load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"