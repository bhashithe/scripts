# Custom ~~bash~~ scripts

I have some scripts which I use to make the routines easy in my computer. `actionmenu` has some handy scripts to shutdown, reboot, extend screen to a monitor.

You can add the scripts folder to the PATH variable and fix some keyboard shortcuts via your window manager

``` bash
# /etc/environment
PATH=$PATH:/path/to/scripts
```

Since I am using i3,

``` bash
# ~/.config/i3/config
bindsym $mod+BackSpace exec actionmenu
```

