#!/bin/bash
apt install -y xdotool xclip
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
wget https://github.com/acosonic/crosspaste/raw/main/crosspaste.png -P $USER_HOME
sudo cat <<EOF >/usr/share/applications/crosspaste.desktop
[Desktop Entry]
Name=Cross Paste
Exec=/bin/bash -c "sh -c 'sleep 2.5; xdotool type \"\$(xclip -o -selection clipboard)\"'"
Type=Application
Terminal=false
Icon=${USER_HOME}/crosspaste.png
EOF
