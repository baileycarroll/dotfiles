# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Keeping Bash tidy and portabl
[ -f ~/.bash_exports ] && . ~/.bash_exports
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# fzf bindings for Arch
[ -f /usr/share/fzf/key-bindings.bash ] && . /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash   ] && . /usr/share/fzf/completion.bash

# Starship prompt for bash
command -v starship >/dev/null 2>&1 eval "$(starship init bash)"

# Zoxide (smart cd)
command -v zoxide >/dev/null 2&>1 && eval "$(zoxide init bash)"
