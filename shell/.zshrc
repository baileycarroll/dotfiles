# Completions
autoload -Uz compinit
compinit

# Options that feel good coming from bash
setopt autocd interactivecomments hist_ignore_all_dups share_history extended_glob

# History
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# SSH Agent
eval "$(ssh-agent -s)"

# Reuse portable bits
[ -f ~/.bash_exports ] && source ~/.bash_exports
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# Prompt & QoL
command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"
command -v zoxide  >/dev/null 2>&1 && eval "$(zoxide  init zsh)"

# fzf (Arch paths)
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh   ] && source /usr/share/fzf/completion.zsh

# Nice plugins if installed
[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] \
  && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] \
  && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

