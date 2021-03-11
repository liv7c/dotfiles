# dotfiles

Repo containing some config files for:
- bash
- tmux
- alacritty
- neovim

## Structure

* `init` is the script to run to set everything up. It is a shell script that creates a symlink for whatever file you put in the `symlinks` directory.
If you feel like cloning this and use it as your own, change the `HOMEDIR` and `CURRENTDIR` variables in `init`
* The `bashrc` sources whatever files are in the `sources` directory (in my case, just some functions and magical aliases).
* the `nvim` folder contains all my neovim config. `init` contains a special function to symlink it all.
* `nvim/plugin` contains the config of the plugins I use (like `coc`, `telescope` and my general vim settings (`sets.vim` and `navigation.vim`))

## Sources of inspiration / some great dotfiles repos

* https://github.com/ViBiOh/dotfiles
* https://github.com/garybernhardt/dotfiles
