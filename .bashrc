# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export GIT_PROMPT_THEME=Single_line_RH_GTSENV
export GIT_PROMPT_FETCH_REMOTE_STATUS=0
source ~/.bash-git-prompt_clean/gitprompt.sh
shopt -s checkwinsize
export PYTHONSTARTUP=$HOME/.pythonrc
alias ll="ls -l"
