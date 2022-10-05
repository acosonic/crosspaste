#!/bin/bash
apt install -y xdotool xclip
me="$(whoami)"
wget ... -P /usr/share/applications/crosspaste.png
cat <<EOF >/usr/share/applications/crosspaste.desktop
[Desktop Entry]
Name=Cross Paste
Exec=/bin/bash -c "sh -c 'sleep 1.5; xdotool type \"$(xclip -o -selection clipboard)\"'"
Type=Application
Terminal=false
Icon=/home/$*{me}/crosspaste.png
EOF
