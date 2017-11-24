# setup prompt
autoload -U promptinit; promptinit
prompt pure # from https://github.com/sindresorhus/pure

# setup completions
autoload -U compinit; compinit
source ~/.zsh/vendor/docker/cli/contrib/completion/zsh/_docker

# setup history
HISTSIZE=8192
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.zsh_history
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

source ~/.environment
source ~/.aliases

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
