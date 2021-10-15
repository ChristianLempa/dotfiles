# SET ZSH THEME
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Load ZSH Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# EXPORT BIN PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cargo/bin

# NODEJS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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

# ALIAS COMMANDS
[[ ! -f /bin/exa ]] && echo "Warning: exa is not installed" || alias ls="exa --icons --group-directories-first" 
alias k="kubectl"
[[ ! -f /usr/local/share/goto.sh ]] && echo "Warning: goto is not installed" || alias g="goto"

# Source goto
[[ -s "/usr/local/share/goto.sh" ]] && source /usr/local/share/goto.sh
