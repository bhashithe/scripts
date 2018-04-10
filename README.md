# Custom bash scripts

I have some scripts which I use to make the routines easy in my computer.

* rofishut
* rofiswitch

`rofishut` is a handy shutdown/reboot tool which takes the users input as shutdown/reboot/continue and does exactly that.

`rofiswitch` takes users input as extend left, extend right and copy and deal with the VGA output to give the correct VGA out.

You can add the scripts folder to the PATH variable and fix some keyboard shortcuts via your window manager

``` bash
# /etc/environment
PATH=$PATH:/path/to/scripts
```

Since I am using i3,

``` bash
# ~/.config/i3/config
bindsym $mod+BackSpace exec rofishut
bindsym $mod+p exec rofiswitch
```

