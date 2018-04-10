#!/bin/bash
eval $(ssh-agent -s)
export SHELL=/usr/bin/zsh
export ZDOTDIR=$HOME/.config/zsh/
source $ZDOTDIR/.zshenv