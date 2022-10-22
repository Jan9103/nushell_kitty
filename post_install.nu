# fix gpg: https://github.com/kovidgoyal/kitty/issues/2451
let KITTY_TERMINFO_LINK = '~/.terminfo/x/xterm-kitty'
if (not ($KITTY_TERMINFO_LINK | path exists)) or (not (readlink -f $KITTY_TERMINFO_LINK | path exists)) {
	mkdir '~/.terminfo/x'
	let kitty_terminfo_file = (infocmp -a xterm-kitty | parse -r 'from file: (?P<file>.*)').0.file
	if $kitty_terminfo_file != '' {
		ln -sf $kitty_terminfo_file $KITTY_TERMINFO_LINK
	} else {
		print -e 'Unable to symlink xterm-kitty terminfo.'
	}
}
