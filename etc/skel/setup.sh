#!/bin/bash
dbus-launch dconf load / < ~/xed.dconf
chmod -R +x ~/.config/sway/scripts
chmod -R +x ~/.config/waybar/scripts
sed -i 's|\(exec --no-startup-id ~/setup.sh\)|# \1|' ~/.config/sway/config
rm ~/xed.dconf
rm ~/setup.sh
