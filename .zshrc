# --------------     Plugins     --------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# import plugins
source $HOME/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.config/zsh/p10k.zsh ]] || source $HOME/.config/zsh/p10k.zsh
source /usr/share/bash-completion/completions complete -F _todo t 
# --------------     History     --------------
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
# --------------     Aliases     --------------
source $HOME/.config/zsh/aliases
source $HOME/.config/zsh/aliases-suse
alias t="$HOME/.local/bin/todo.sh -d $HOME/.config/todo/todo"
# --------------      asdf ?     --------------
# $HOME/.config/asdf/asdf.sh
# -------------- Add to path env --------------
# export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin/greenclip:$PATH

# -------------- Custom Commands --------------
# Create dir/folder and change directory in one command
mkcd(){ mkdir "$1" && cd "$1" && echo "create and change dir successuly" ; }
# Ignore case when autocomplete with TAB
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
## case-insensitive (uppercase from lowercase) completion
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
## case-insensitive (all) completion
##zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
## case-insensitive,partial-word and then substring completion
##zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
