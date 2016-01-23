#
# ~/.bash_profile
#
export GOPATH=~/Development/Go
export PATH="$PATH:$GOPATH/bin"
export XDG_MENU_PREFIX=gnome-
export TERMINAL=gnome-terminal
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
