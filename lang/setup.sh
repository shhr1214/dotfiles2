#!/bin/bash

if [ ! -e ${HOME}/.cargo ]; then
    curl https://sh.rustup.rs -sSf | sh
fi


if [ ! -e ${HOME}/.pyenv ]; then
    git clone https://github.com/yyuu/pyenv.git ~/.pyenv
fi
