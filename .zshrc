# Load git prompt
. ~/zsh_profile/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE="yes"
GIT_PS1_SHOWSTASHSTATE="yes"
GIT_PS1_SHOWUNTRACKEDFILES="yes"
GIT_PS1_SHOWCONFLICTSTATE="yes"

# Load colors
autoload -U colors && colors

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${fg[blue]}%n@%m%{$reset_color%} %c ${fg[yellow]}$(__git_ps1 "(%s)")%{$reset_color%} \$'

# Git aliases
alias gst='git status'
alias gpom='git push origin main'
alias ga='git add .'
alias gc='git commit'
alias gf='git fetch'
alias gbv='git branch -v'

# Other aliases
alias jl='jupyter lab'
alias pinga='ping www.google.com'
alias ll='ls -l'

# Google Cloud SDK aliases
alias gclogin='gcloud auth login'
alias gcadlogin='gcloud auth application-default login'
alias gclogins='gcloud auth login && gcloud auth application-default login'

# Increase History Storage
HISTFILESIZE=1000000000 HISTSIZE=1000000
