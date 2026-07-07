bindkey -e

[[ -f ~/.zsh/secrets.zsh ]] && source ~/.zsh/secrets.zsh
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
# [[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/wsl2fix.zsh ]] && source ~/.zsh/wsl2fix.zsh
[[ -f ~/.zsh/goto.zsh ]] && source ~/.zsh/goto.zsh

# Auto-Complete & Auto-Suggestions plugin
source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load Starship
eval "$(starship init zsh)"

# Load Direnv
eval "$(direnv hook zsh)"

# Load zoxide
eval "$(zoxide init zsh)"

# kubectl krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Go binaries
export PATH="$HOME/go/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/xcad/.lmstudio/bin"
# End of LM Studio CLI section

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Fixes SSH Remote issues with ghosttty
if [[ -n "$SSH_CONNECTION" ]]; then
    export TERM=xterm-256color
fi
export PATH="$(brew --prefix)/opt/curl/bin:$PATH"

# Added by git-ai installer on Sat May  2 11:49:19 CEST 2026
export PATH="/Users/xcad/.git-ai/bin:$PATH"

# cubic
export PATH="/Users/xcad/.cubic/bin":$PATH

export PATH="/Users/xcad/.local/share/modelcode:$PATH"

# Add local user bin to PATH
export PATH="$HOME/.local/bin:$PATH"
