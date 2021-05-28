# Uncomment for debug with `zprof`
# zmodload zsh/zprof

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK

# Start oh my zsh
ZSH_THEME="agnoster"
plugins=(git)
source "$ZSH/oh-my-zsh.sh"

# Async mode for autocompletion
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

source "$DOTFILES_PATH/shell/init.sh"

fpath=("$DOTFILES_PATH/shell/zsh/completions" $fpath)

source $DOTFILES_PATH/shell/zsh/key-bindings.zsh
