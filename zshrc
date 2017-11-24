# setup prompt
autoload -U promptinit; promptinit
prompt pure # from https://github.com/sindresorhus/pure

# setup completions
autoload -U compinit; compinit
source ~/.zsh/vendor/docker/cli/contrib/completion/zsh/_docker

source ~/.environment
source ~/.aliases

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
