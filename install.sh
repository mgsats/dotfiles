#!/bin/bash

find . -name 'dot-*' -execdir bash -c '
    function symlink_to_home {
        file=$1
        echo "Creating symlink" $HOME/.${file:4} "->" $PWD/$1
        ln -s $PWD/$1 $HOME/.${file:4}
    }
    symlink_to_home "$@"' bash {} \;
