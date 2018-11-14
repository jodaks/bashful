# .bashrc
if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

# additional PATH
export PATH=$PATH:/usr/local/sbin

# colors
export PS1="\n\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Git on prompt
# if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
#  GIT_PROMPT_ONLY_IN_REPO=1
#  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
#fi

if [ -f ~/.git-prompt.sh ]; then
  . ~/.git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWCOLORHINTS=true
  GIT_PS1_UNTRACKEDFILES=true
  PROMPT_COMMAND="__git_ps1 '\n\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]' '\n\\$ '"
fi

# Git bash completion
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi
