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
