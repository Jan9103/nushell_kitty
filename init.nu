# ssh
def 'complete ssh host' [] {
	(cat '~/.ssh/config' | lines | parse -r '^Host (?P<host>[^\*]*)$').host
}
export alias ssh = kitty +kitten ssh
export extern 'kitty +kitten ssh' [
	# incomplete!
	host: string@'complete ssh host'
	...command: string
]

# grep
export alias rg = kitty +kitten hyperlinked_grep

# git (has some issues -> disabled)
#export alias 'git diff' = git difftool --no-symlinks --dir-diff
#let-env GIT_EXTERNAL_DIFF = 'kitty +kitten diff'
