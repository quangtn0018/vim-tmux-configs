# aliases
alias dfprojects="cd ../../Volumes/Data"
alias gs="git status"
alias gaa="git add -A"
alias gcm="git checkout master"
alias gmm="git merge master"
alias gp="git pull"
alias gsp="git stash pop"

# git alias function to take in parameters
gcmit-m() {
    git commit -m "$1"
}
gc-b() {
    git checkout -b "$1"
}
gc() {
    git checkout "$1"
}
gp-uo() {
    git push -u origin "$1"
}

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Load RVM into a shell session *as a function*
export PS1="\u@\h \W\[\033[36m\]\$(parse_git_branch)\[\033[00m\] $ "
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

source ~/.profile
