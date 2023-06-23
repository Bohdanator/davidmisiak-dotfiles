#!/bin/bash

~/.scripts/toolwait.py -m scratch0 -- lxterminal
swaymsg 'move scratchpad'

~/.scripts/toolwait.py -m scratch1 -- lxterminal
swaymsg 'move scratchpad'

~/.scripts/toolwait.py -m scratch2 -- lxterminal -e ipython
swaymsg 'move scratchpad'

~/.scripts/toolwait.py -m scratch4 -- lxterminal -e htop
swaymsg 'move scratchpad'

swaymsg 'workspace --no-auto-back-and-forth "1:1 󰈹 "'
~/.scripts/toolwait.py firefox

swaymsg 'workspace --no-auto-back-and-forth "3:3 󰨞 "'
~/.scripts/toolwait.py -w code-url-handler -- code

swaymsg 'workspace --no-auto-back-and-forth "11:-  "'
~/.scripts/toolwait.py -w org.telegram.desktop -- bash -c 'telegram-desktop &'

swaymsg 'workspace --no-auto-back-and-forth "12:= 󰒱 "'
~/.scripts/toolwait.py -w Slack -- slack --enable-features=UseOzonePlatform --enable-features=WebRTCPipeWireCapturer --enable-features=WaylandWindowDecorations --ozone-platform=wayland
