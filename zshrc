# setup prompt
autoload -U promptinit; promptinit
prompt pure # from https://github.com/sindresorhus/pure

# setup completions
autoload -U compinit; compinit

source ~/.environment
source ~/.aliases

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
