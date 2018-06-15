autoload -Uz compinit promptinit
compinit
promptinit

prompt pure # https://github.com/sindresorhus/pure

fpath=(~/.zsh/vendor/zsh-completions/src $fpath)

etc=/Applications/Docker.app/Contents/Resources/etc
ln -sf $etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
ln -sf $etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
ln -sf $etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose

# setup history
HISTSIZE=8192
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.zsh_history
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

# setup misc opts
setopt AUTO_CD
setopt NOCLOBBER
setopt CORRECTALL

source ~/.zsh/environment.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/functions.zsh

source ~/.zsh/vendor/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/vendor/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
