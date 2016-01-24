#!/bin/bash

dir="$(dirname "$0")"

mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3blocks

ln -s -f $dir/bash_profile ~/.bash_profile
ln -s -f $dir/gtk3 ~/.config/gtk-3.0/settings.ini
ln -s -f $dir/gtkrc-2.0 ~/.gtkrc-2.0
ln -s -f $dir/i3 ~/.config/i3/config
ln -s -f $dir/i3blocks ~/.config/i3blocks/config
