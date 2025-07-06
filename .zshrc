[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
# [[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/wsl2fix.zsh ]] && source ~/.zsh/wsl2fix.zsh
[[ -f ~/.zsh/goto.zsh ]] && source ~/.zsh/goto.zsh

# Load Starship
# eval "$(starship init zsh)"

# Load Direnv
eval "$(direnv hook zsh)"

# Load zoxide
eval "$(zoxide init zsh)"

# kubectl krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# lm studio
export PATH="$PATH:/Users/xcad/.lmstudio/bin"

# Ollama Configuration
export OLLAMA_KEEP_ALIVE=600         # Keep models loaded for 10 minutes
export OLLAMA_REQUEST_TIMEOUT=300    # 5 minute request timeout
export OLLAMA_LOAD_TIMEOUT=600       # 10 minute load timeout
export OLLAMA_HOST=127.0.0.1:11434   # Default host (optional)
export OLLAMA_MODELS=~/.ollama/models # Model storage location (optional)
