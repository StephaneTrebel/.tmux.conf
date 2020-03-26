# My dotfiles

Hi, and welcome to my tmux repo.
Here you’ll find my tmux configuration and a handy makefile to symlink it.

# How to use

To install everything:
```bash
$ make install
```

To list all rules:
```bash
$ make
```
and then you can call `make` followed by the desired rule to only install this one.


# Contents

- [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
- Prefix set as Ctrl-a (Much easier for a BÉPO keyboard)
- Add mouse support for selection
- Escape copy-mode with Escape
- Vim bindings in copy mode (plus `v`, `V`, `r`, and `y` for yanking in the system clipboard)
- Clipboard copying
- Do not exit copy-mode after copying to clipboard (it confused me a lot…)
- Automatic session saving (thanks to tmux-resurrect), including Vim sessions !
- You can save you windows/panels setup with Prefix+Ctrl-S (think "Save") and restore it with Prefix+Ctrl-R (think "Restore")
