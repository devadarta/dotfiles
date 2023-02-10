# -------------- PowerLevel10K --------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# plugins
source $HOME/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh

# --------------    History    --------------
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# --------------    Aliases    --------------
source $HOME/.config/zsh/aliases
source $HOME/.config/zsh/aliases-zypper

# --------------     asdf      --------------
# $HOME/.config/asdf/asdf.sh

# --------------     PATH      --------------
# export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH
