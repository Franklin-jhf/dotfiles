#!/bin/bash

base=~/.my-dotfiles

function link {
    src=$base/$1
    dst=`echo "$src" | sed "s/.*\///"` # extract just the filename
    dst=~/.${dst%%.symlink}

    if ([ -f $dst ] || [ -d $dst ]) && ! [ -L $dst ]; then
        echo "$dst exists and is a regular file. Exiting"
        exit 1
    fi

    if [ -e $dst ]; then
        echo "$dst is already a link"
        return
    fi

    echo "$src --> $dst"
    ln -s "$src" "$dst"
}

function env_setup {
    link git/gitconfig.symlink
    link git/githelpers.symlink
    link git/gitignore.symlink
    link system/xterm-256color.ti.symlink
    link vim/vim.symlink
    link vim/vimrc.symlink
    link zsh/zshrc.symlink
    # link docker/docker.symlink

    ln -sFv ~/.my-dotfiles/sublime/keymap.symlink /Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ (OSX).sublime-keymap
    # mkdir -p ~/.config/nvim
    # ln -sFv ~/.vimrc ~/.config/nvim/init.vim
    # ln -sFv ~/.vim/autoload ~/.config/nvim
}

env_setup
