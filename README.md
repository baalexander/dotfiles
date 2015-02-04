
## vim Installation

### Set Up Paths

1. `git clone https://github.com/baalexander/vim.git vim`
2. `ln -s /<full path>/dotfiles/vim/.vimrc ~/.vimrc`
3. `mkdir -p /<full path>/dotfiles/vim/.vim/bundle`
4. `ln -s /<full path>/dotfiles/vim/.vim ~/.vim`
5. `mkdir ~/.vim_backup`

### Install Plugins with Vundle

1. `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
2. `vim +PluginInstall +qall`

### Work with tmux

1. Add `set -g default-terminal "screen-256color"` to ~/.tmux.conf to show
   colors

### Work with git

1. If git complains after writing a commit with vim, run `git config --global
   core.editor $(which vim)`. See this [GitHub
   issue](https://github.com/gmarik/Vundle.vim/issues/167) for more info.


## bash installation

### Set Up Paths

1. `ln -s /<full path>/dotfiles/bash/.bashrc ~/.bashrc`
2. If on OS X, `ln -s /<full path>/dotfiles/bash/.bash_profile ~/.bash_profile`


## tmux installation

### Set Up Paths

1. `ln -s /<full path>/dotfiles/tmux/.tmux.conf ~/.tmux.conf`


## License

This project is released under the MIT license.

