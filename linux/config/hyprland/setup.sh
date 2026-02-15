#!/bin/bash

# ================================
# SETUP HYPRLAND CONFIG FILES
# ================================

# create user settings config file
touch ~/.config/hypr/user_settings.conf

# copy user settings config file
cp ./user_settings.conf ~/.config/hypr/user_settings.conf

# add config to ~/.config/hypr/hyprland.conf
echo 'source = ~/.config/hypr/user_settings.conf' >> ~/.config/hypr/hyprland.conf

# ================================
# SETUP HYPRLAND MONITORS
# ================================

echo '

monitor=eDP-1,2880x1920@120.00,2656x640,2.00
monitor=DP-2,3840x2160@120.00,96x160,1.50
' >> ~/.config/hypr/hyprland.conf

# ================================
# SETUP HYPRLAND EYE PROTECTION MODE
# ================================

echo '

# Use Eye Protection Mode
exec-once = uwsm app -- hyprsunset
' >> ~/.config/hypr/hyprland.conf

# ================================
# RESTART HYPRLAND
# ================================

hyprctl reload

# ================================
# END OF SCRIPT
# ================================