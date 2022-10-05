#!/bin/bash
apt install -y xdotool xclip
wget https://github.com/acosonic/crosspaste/raw/main/crosspaste.png -P $HOME
cat <<EOF >/usr/share/applications/crosspaste.desktop
[Desktop Entry]
Name=Cross Paste
Exec=/bin/bash -c "sh -c 'sleep 1.5; xdotool type \"\$(xclip -o -selection clipboard)\"'"
Type=Application
Terminal=false
Icon=${HOME}/crosspaste.png
EOF
