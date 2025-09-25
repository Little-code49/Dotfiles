#nitch
pokemon-colorscripts -r
source ~/.zplug/init.zsh
eval "$(starship init zsh)"
alias ls=eza
alias cat=bat

##starship preset catppuccin-powerline -o ~/.config/starship.toml
#

## PLUGINS ##
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug "plugins/git",   from:oh-my-zsh
zplug load

# Created by `pipx` on 2025-06-01 08:26:31
#export PATH="$PATH:/usr/games"
#export PATH="$PATH:/home/pugorutori/.local/bin"
#export PATH="$PATH:/var/lib/snapd/snap/bin"
export PATH="$PATH:$HOME/.cargo/bin"
#alias ag="the-silver-searcher-ag"
#export FZF_DEFAULT_COMMAND='the-silver-searcher-ag --hidden --ignore .git -g ""'

export HYPRSHOT_DIR="$HOME/Screenshots/"

# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

eval "$(zoxide init --cmd cd zsh)"
