export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode reminder
COMPLETION_WAITING_DOTS="true"
plugins=(
  git
  bundler
  dotenv
  macos
)
source $ZSH/oh-my-zsh.sh

export EDITOR="/usr/bin/vim"
export PATH="/usr/local/go/bin:$HOME/go/bin:$HOME/bin:/usr/local/bin:$PATH"
