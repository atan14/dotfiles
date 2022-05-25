# Setup fzf
# ---------
if [[ ! "$PATH" == */home/atan14/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/atan14/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/atan14/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/atan14/fzf/shell/key-bindings.bash"
