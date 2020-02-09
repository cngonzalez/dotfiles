This repo serves a few functions:
1) it contains my dotfiles (`.bash_profile`, `.vimrc`) etc. in case I break them
2) It should contain an install script that allows anybody to install a tmux/vim-with-plugin setup in an environment without sudo privileges (useful for remote working from a server, for example), but when you have become accustomed to your own setup.

TO USE:
I've tried to make this a multi-step process, in part for safety's sake.
1. To install tmux in `~/local/bin`, run `sh tmux.sh` (this will also make `~/local/bin` if it doesn't exist.
2. To get a version of VIm with all mod cons (I mostly do this for the xterm clipboard), run `sh vim.sh`
3. Last (and don't do this if you don't know what you're doing!!!) `customize.sh` will copy the dotfiles to your $HOME, clone Vundle, and install all plugins.


Feel free to fork and edit, and raise issues/PRs for any suggestions.


