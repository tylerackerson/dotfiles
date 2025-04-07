export ZSH="$HOME/.oh-my-zsh"

# clone/install these
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode reminder
COMPLETION_WAITING_DOTS="true"
plugins=(
  git
  bundler
  dotenv
  macos
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

export EDITOR="/usr/bin/vim"
export PATH="/usr/local/go/bin:$HOME/go/bin:$HOME/bin:/usr/local/bin:$PATH"

alias gupm="git checkout master && git pull && git checkout -"
alias gum="git checkout master && git pull"

# wwi -> 'where was I?' for switching branches
# requires fzf: brew install fzf
alias wwi="git checkout \$(git for-each-ref --sort=-committerdate --format='%(refname:short)' refs/heads/ | head -n 10 | fzf)

source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
