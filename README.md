# dotfiles
My dotfiles and environment setup scripts.

## components

There's a few special files in the hierarchy.

- `bin/: Anything in bin/ will get added to your $PATH and be made available everywhere.
- `topic/*.sh`: Any files ending in .sh get loaded into your environment.
- `topic/path.sh`: Any file named path.zsh is loaded first and is expected to setup $PATH or similar.
- `topic/completion.sh`: Any file named completion.zsh is loaded last and is expected to setup autocomplete.
- `topic/install.sh`: Any file named install.sh is executed when you run script/install. To avoid being loaded automatically, its extension is .sh, not .zsh.
- `topic/*.symlink`: Any file ending in *.symlink gets symlinked into your $HOME. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run script/bootstrap.



## links
- [dotfiles github guide](http://dotfiles.github.io/)

## credits

Many thanks to [@holman/dotfiles](https://github.com/holman/dotfiles); I drawn a lot of inspiration from his dotfiles repo.
