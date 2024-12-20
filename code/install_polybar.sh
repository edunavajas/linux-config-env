#!/bin/bash

source "$SCRIPT_DIR/code/common.sh" 

run_command "Deploying polybar" "git clone https://github.com/VaughnValle/blue-sky.git"

echo "Copying polybar configuration..."

cd blue-sky/polybar
cp -r * ~/.config/polybar/

echo "Configuring Polybar for $DEFAULT_USER..."
touch /home/$DEFAULT_USER/.config/polybar/launch.sh
cp -f "$SCRIPT_DIR/.config/polybar/launch.sh" /home/$DEFAULT_USER/.config/polybar/launch.sh
touch /home/$DEFAULT_USER/.config/polybar/workspace.ini
cp -f "$SCRIPT_DIR/.config/polybar/workspace.ini" /home/$DEFAULT_USER/.config/polybar/workspace.ini
touch /home/$DEFAULT_USER/.config/polybar/current.ini
cp -f "$SCRIPT_DIR/.config/polybar/current.ini" /home/$DEFAULT_USER/.config/polybar/current.ini
touch /home/$DEFAULT_USER/.config/polybar/colors.ini
cp -f "$SCRIPT_DIR/.config/polybar/colors.ini" /home/$DEFAULT_USER/.config/polybar/colors.ini
chown -R $DEFAULT_USER:$DEFAULT_USER /home/$DEFAULT_USER/.config/polybar
chmod +x /home/$DEFAULT_USER/.config/polybar/launch.sh
