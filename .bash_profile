# Adding bash profile for terminals on AWS SageMaker that shows git branches on the terminal with color
# The source uses git-prompt.sh created by Shawn O. Pearce https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh

# Set source to get the git prompt
source ~/zsh_profile/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true

# export PS1='\u@\h -> \W\[\033[0;33m\]$(__git_ps1)\[\033[0m\]\$ '
export PS1='\W\[\033[0;33m\]$(__git_ps1)\[\033[0m\]\$ '

# Git aliases
alias gst='git status'
alias gpom='git push origin master'
alias ga='git add .'
alias gc='git commit'
alias ll='ls -l'
