# Kitty [packer.nu][] Package

Fix things for the Kitty Terminal and make use of its features.

## Features

- fix `gpg` (based on [Kitty Issue 2451 comments](https://github.com/kovidgoyal/kitty/issues/2451))
- auto use the `ssh` kitten (alias)
	- add tab complete for it (WIP)
- auto use the `hyperlinked grep` kitten (alias)

## Packer.nu settings

In case you use nu in the TTY or multiple terminal emulators (or might do in the future)
you should add conditional loading to this package:
```
{source: '…'
	condition: {env: {TERM: ['xterm-kitty']}}
}
```

[packer.nu]: https://github.com/jan9103/packer.nu
