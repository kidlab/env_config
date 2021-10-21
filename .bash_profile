
##
# Your previous /Users/manvuong/.bash_profile file was backed up as /Users/manvuong/.bash_profile.macports-saved_2013-08-14_at_14:48:24
##

export PATH=$HOME/Workspace/go_appengine:$HOME/.go/bin:/usr/local/sbin:/usr/local/bin:$PATH # Go App Engine SDK

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias mongostart="launchctl start homebrew.mxcl.mongodb"
alias mongostop="launchctl stop homebrew.mxcl.mongodb"

export GOPATH=$HOME/.go/
alias gopath="export GOPATH=$GOPATH:`pwd`"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/manvuong/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/manvuong/google-cloud-sdk/completion.bash.inc'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# PS1='\u@\h:\W\$ '
# PS1='\[\e[0;32m\]\u@\h\[\e[m\]:\[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
export PS1='\[\033[01;32m\]\u@\h\[\e[m\]:\[\033[01;34m\]\W \$\[\033[00m\] '

export GREP_OPTIONS='--color=always'

# Color SSH
function colorssh() {
  ARGS=$@
  if [[ $ARGS =~ (production|ec2-.*compute-1) ]]; then
    printf "\033]7;file://%s/\007" "production-instance"
  else
    printf "\033]7;file://%s/\007" "$ARGS"
  fi
  ssh $*
}

alias ssh="colorssh"
