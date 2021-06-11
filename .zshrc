# SET ZSH THEME
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Load ZSH Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# EXPORT BIN PATH
export PATH=$PATH:$HOME/.local/bin

# VAGRANT CONFIGURATION
export VAGRANT_DEFAULT_PROVIDER="hyperv"
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

# FIX WSL2 INTEROP
fix_wsl2_interop() {
    for i in $(pstree -np -s $$ | grep -o -E '[0-9]+'); do
        if [[ -e "/run/WSL/${i}_interop" ]]; then
            export WSL_INTEROP=/run/WSL/${i}_interop
        fi
    done
}

# ALIASES
[[ ! -f /bin/exax ]] && echo "Warning: exa is not installed" || alias ls="exa --icons --group-directories-first" 
