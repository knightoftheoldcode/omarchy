#!/bin/bash

# add disable internal display lines to hyprland.conf
sed -i '/# env = MY_GLOBAL_ENV,setting/a\
bindl=,switch:on:Lid Switch,exec,hyprctl keyword monitor "eDP-1, disable"\
bindl=,switch:off:Lid Switch,exec,hyprctl keyword monitor "eDP-1, preferred, auto, auto"' ~/.config/hypr/hyprland.conf
