#!/bin/bash

echo "Copying kitty configuration to root's .config directory..."
mkdir -p /root/.config/kitty
cp /home/$DEFAULT_USER/.config/kitty/* /root/.config/kitty/
update_progress