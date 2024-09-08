# Based on:
# https://github.com/Phantas0s/purification

git_prompt() {
	local INDEX STATUS
	INDEX=$(command git status --porcelain -b 2> /dev/null)

	STATUS=""

	if [ -n "$INDEX" ]; then
		echo "λ"
	fi
	
	if [[ ! -z "$STATUS" ]]; then
		# echo "$STATUS"
	fi
		
}

prompt_setup() {
	setopt prompt_subst

	PROMPT=$'%F{WHITE}%~ %F{117}$(git_prompt)%B>%f%b '
}

prompt_setup "$@"
