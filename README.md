# crosspaste
Linux cross paste (types clipboard content as keystrokes)

Motivation:

This is useful, when you need to paste some content from clipboard to some application like
vmware's ESXI virtual machine for example or something similar. 

This script will create paste.desktop file in /usr/share/applications 

which you can later invoke by running it as application via launcher or dock.

![Screenshot1](ksnip_20221004-124918.png)

To add it to dock, just right click and choose **Add to Favorites**

### How to use it?

1. Copy the text you need pasted on clipboard.
2. Click paste icon (you have 2.5 seconds for next step)
3. Switch to application where you need it pasted
4. Wait for text to appea

![Usage](vokoscreen-2022-10-04_14-51-29.gif)

### How it works:

1. It uses xdtool to acheive keystroke typing taken from clipboard via xclip
2. It waits 2.5 seconds to type keystrokes via sleep command, *you can modify number of seconds by changing that*
3. Script downloads icon and places paste.png to your home folder, you can change it by replacing icon with different one
4. Script creates paste.desktop in /usr/share/applications with following contents

```[Desktop Entry]
Name=Cross Paste
Exec=/bin/bash -c "sh -c 'sleep 2.5; xdotool type \"$(xclip -o -selection clipboard)\"'"
Type=Application
Terminal=false
Icon=/home/youruser/paste.png
```




