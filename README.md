# dotfiles

Personal config files for:
- bash
- tmux
- alacritty

## Structure

> ⚠️ If you want to use this config as your own, update the `HOMEDIR` and `CURRENTDIR` variables in the 'init` file.

* `init` is a small shell script to set everything up. It creates a symlink for all the files in the `symlinks` directory.
* The `bashrc` sources all the files from the `sources` directory (in my case, just some functions and bash aliases). 

## Some great dotfiles repositories

* https://github.com/ViBiOh/dotfiles
* https://github.com/garybernhardt/dotfiles
