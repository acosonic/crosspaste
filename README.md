# crosspaste
Linux cross paste (types clipboard content as keystrokes)

Motivation:

This is useful, when you need to paste some content from clipboard to some application like
vmware's ESXI virtual machine for example or something similar. 

This script will create paste.desktop file in /usr/share/applications 

which you can later invoke by running it as application via launcher or dock.

![Screenshot1](ksnip_20221004-124918.png)

To add it to dock, just right click and choose **Add to Favorites**

How it works:

1. It uses xdtool to acheive keystroke typing taken from clipboard via xclip
2. Script downloads icon and places paste.png to your home folder, you can change it by replacing icon with different one
3. Script creates paste.desktop in /usr/share/applications with following contents

```[Desktop Entry]
Name=Cross Paste
Exec=/bin/bash -c "sh -c 'sleep 1.5; xdotool type \"$(xclip -o -selection clipboard)\"'"
Type=Application
Terminal=false
Icon=/home/youruser/paste.png
```


