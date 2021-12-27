# Load ZSH Plugins
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# EXPORT BIN PATH
# export PATH=$PATH:$HOME/.local/bin
# export PATH=$PATH:$HOME/.cargo/bin
# 
# NODEJS
export NVM_DIR="$HOME/.nvm"
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  alias nvm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && nvm'
  alias node='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && node'
  alias npm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && npm'
fi

# 
# # VAGRANT CONFIGURATION
export VAGRANT_DEFAULT_PROVIDER="hyperv"
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

# FIX WSL2 INTEROP
# fix_wsl2_interop() {
#     for i in $(pstree -np -s $$ | grep -o -E '[0-9]+'); do
#         if [[ -e "/run/WSL/${i}_interop" ]]; then
#             export WSL_INTEROP=/run/WSL/${i}_interop
#         fi
#     done
# }

# 
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# ALIAS COMMANDS
# [[ ! -f /bin/exa ]] && echo "Warning: exa is not installed" || alias ls="exa --icons --group-directories-first" 
# [[ ! -f /usr/local/share/goto.sh ]] && echo "Warning: goto is not installed" || alias g="goto"
# alias grep='grep --color'



# Source goto
#[[ -s "/usr/local/share/goto.sh" ]] && source /usr/local/share/goto.sh

# source "kubectl.sh"
# source "helm.sh"
source "prompt.sh"