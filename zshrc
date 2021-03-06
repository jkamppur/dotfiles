export ZSH=$HOME/.zsh/oh-my-zsh
source ~/.zsh/git-prompt/zshrc.sh

plugins=(jump git git-extras)

export TERM="xterm-256color"

PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin/:$PATH"

if [ -e ~/.local_profile ]
then
    source ~/.local_profile
fi

source ${HOME}/.zsh/oh-my-zsh/oh-my-zsh.sh

unsetopt nomatch

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
PROMPT='$fg[green]%m$reset_color:$fg[blue]%~%b$(git_super_status) %# '
