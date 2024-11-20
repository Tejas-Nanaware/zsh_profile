# Adding bash profile for terminals on AWS SageMaker that shows git branches on the terminal with color
# The source uses git-prompt.sh created by Shawn O. Pearce https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh

# Load git prompt
. ~/zsh_profile/git-prompt.sh

# Set git prompt variables
GIT_PS1_SHOWDIRTYSTATE="yes"
GIT_PS1_SHOWSTASHSTATE="yes"
GIT_PS1_SHOWUNTRACKEDFILES="yes"
GIT_PS1_SHOWCONFLICTSTATE="yes"
# GIT_PS1_SHOWUPSTREAM="auto" # Set this to true if you want to know the if remote branch is ahead or behind

# export PS1='\u@\h -> \W\[\033[0;33m\]$(__git_ps1)\[\033[0m\]\$ '
export PS1='\W\[\033[0;33m\]$(__git_ps1)\[\033[0m\]\$ '

# Git aliases
alias gst='git status'
alias gpom='git push origin main'
alias ga='git add .'
alias gc='git commit'
alias gf='git fetch'
alias gbv='git branch -v'
alias gitecm='git commit -m "empty commit to trigger pipelines"'

# Other aliases
alias jn='jupyter notebook'
alias pinga='ping www.google.com'
alias ll='ls -l'
alias run_pytest='coverage run -m pytest'
alias pytest_report='coverage report --show-missing --omit="tests/*"'
