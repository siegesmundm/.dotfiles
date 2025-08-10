# Aliases
source $ZDOTDIR/aliases

# Navigation

setopt AUTO_PUSHD		# Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS	# Do not store duplicates in the stack.
setopt PUSHD_SILENT		# Do not print the directory stack after pushd or popd.

setopt CORRECT			# Spelling corretion

# Settings
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY		# Share history between all sessions
setopt HIST_IGNORE_DUPS		# Do not recors an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS	# Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE	# Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS	# Do not write a duplicate event to the history file.

# Completion
source $ZDOTDIR/completion.zsh

# Prompt

fpath=($ZDOTDIR/prompt $fpath)
source $ZDOTDIR/prompt/prompt.zsh

# Keybind
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[H"  beginning-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^Y" hisotry-incremental-search-forward
