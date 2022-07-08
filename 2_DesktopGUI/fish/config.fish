if status --is-login
	if test (tty) = /dev/tty1
		exec startx --keeptty
	end
end

alias grep="grep --color=auto"
alias cat="bat --style=plain --paging=never"
alias ls="exa --group-directories-first"
alias tree="exa -T"
alias la="exa -la --group-directories-first"

function fish_greeting
end


