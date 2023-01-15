# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/.local/bin:/usr/local/bin:$PATH
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec wrappedhl
fi

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
alias ls='ls --color=auto'
alias l='ls -lh --color=auto'
alias lh='ls -lah --color=auto'
alias grep='rg'
alias diff='colordiff'
alias hx='helix'
alias nv='nvim'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/k1gen/.zshrc'
autoload -Uz compinit
compinit

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
