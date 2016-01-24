# Variables
set $mod Mod4
set $files nautilus
set $browser google-chrome-stable
set $web 
set $work 
set $misc 
set $game 
set $chat 
set $term 
set $torr 

# Settings
font pango:Liberation Sans 12
floating_modifier $mod
new_window none
new_float none

# Key bindings
bindsym $mod+r exec --no-startup-id j4-dmenu-desktop --dmenu='rofi -dmenu -i -p "run:" -bg "#222222" -fg "#888888" \
-hlbg "#285577" -hlfg "#ffffff" -hide-scrollbar' --no-generic
bindsym $mod+t exec i3-sensible-terminal
bindsym $mod+f exec $files
bindsym $mod+b exec $browser
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right
bindsym $mod+h split h
bindsym $mod+v split v
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

bindsym $mod+Shift+q kill
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right
bindsym $mod+Shift+f fullscreen toggle
bindsym $mod+Shift+space floating toggle

bindsym $mod+1 workspace $web
bindsym $mod+2 workspace $work
bindsym $mod+3 workspace $misc
bindsym $mod+4 workspace $game
bindsym $mod+5 workspace $chat
bindsym $mod+6 workspace $term
bindsym $mod+7 workspace $torr

bindsym $mod+Shift+1 move container to workspace $web
bindsym $mod+Shift+2 move container to workspace $work
bindsym $mod+Shift+3 move container to workspace $misc
bindsym $mod+Shift+4 move container to workspace $game
bindsym $mod+Shift+5 move container to workspace $chat
bindsym $mod+Shift+6 move container to workspace $term
bindsym $mod+Shift+7 move container to workspace $torr

bindsym $mod+Shift+r restart
bindsym $mod+l exec --no-startup-id "scrot /tmp/screen_locked.png; mogrify -scale 10% -scale 1000% \
/tmp/screen_locked.png; i3lock -i /tmp/screen_locked.png"

bindsym XF86AudioRaiseVolume exec --no-startup-id "amixer -q set Master 2%+ unmute; pkill -RTMIN+1 i3blocks"
bindsym XF86AudioLowerVolume exec --no-startup-id "amixer -q set Master 2%- unmute; pkill -RTMIN+1 i3blocks"
bindsym XF86AudioMute exec --no-startup-id "amixer -q set Master toggle; pkill -RTMIN+1 i3blocks"
bindsym XF86MonBrightnessUp exec --no-startup-id xbacklight -inc 20
bindsym XF86MonBrightnessDown exec --no-startup-id xbacklight -dec 20
bindsym XF86KbdBrightnessDown exec --no-startup-id asus-kbd-backlight off
bindsym XF86KbdBrightnessUp exec --no-startup-id asus-kbd-backlight max
bindsym XF86TouchpadToggle exec --no-startup-id "id=$(xinput | grep -Eio 'touchpad\s*id\=[0-9]{1,2}' | grep -Eo \
'[0-9]{1,2}'); xinput set-prop $id 127 $(xinput list-props $id | grep -c 'Device Enabled.*0')"

# Rules
assign [class="google-chrome"] $web
assign [class="Gedit"] $work
assign [class="Atom"] $work
assign [class="Mainwindow.py"] $game
assign [class="Steam"] $game
assign [class="Gnome-terminal"] $term
assign [class="Transmission-gtk"] $torr
assign [class=".*"] $misc

for_window [class="Nautilus"] floating enable
for_window [class="Mainwindow.py"] floating enable

# Autostart
exec --no-startup-id feh --bg-scale /home/hadal/Pictures/Wallpapers/poly.png
exec --no-startup-id setxkbmap -layout us,ru -option grp:caps_toggle

bar {
	position top
    status_command i3blocks
}
