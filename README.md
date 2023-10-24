# my build of dwm
how to use:  
- change the variable in restart.sh according to the executable you'll run DWM as
- modify ~/dwm/autoshart.sh - it starts everything there on exit
- run ```make``` or ```sudo make install```
- put the ```./restart.sh``` in your .xinitrc
- you're set!
- make sure to check out the themes at top of config.h, switch by uncommenting the 4 lines
- all keybinds are supposed to be managed thru sxhkd for modularity

dependencies: ```dmenu kitty j4-dmenu-desktop```
fonts: ```JeetBrainsMono Nerd Font```



dwm - dynamic window manager
============================
dwm is an extremely fast, small, and dynamic window manager for X.


Requirements
------------
In order to build dwm you need the Xlib header files.


Installation
------------
Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm (if
necessary as root):

    make clean install


Running dwm
-----------
Add the following line to your .xinitrc to start dwm using startx:

    exec dwm

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

    while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
    exec dwm


Configuration
-------------
The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.
