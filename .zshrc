# Load colors
autoload -U colors && colors

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
# PROMPT='%n@%m %c ${vcs_info_msg_0_}\$'
PROMPT='${fg[blue]}%n@%m%{$reset_color%} %c ${fg[yellow]}${vcs_info_msg_0_}%{$reset_color%} \$'

# Git aliases
alias gst='git status'
alias gpom='git push origin main'
alias ga='git add .'
alias gc='git commit'
alias gf='git fetch'
alias gbv='git branch -v'

# Other aliases
alias jn='jupyter notebook'
alias pinga='ping www.google.com'
alias ll='ls -l'

# Increase History Storage
HISTFILESIZE=1000000000 HISTSIZE=1000000
