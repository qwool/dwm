#!/bin/bash
dwmdir="$HOME/sl/dwm/dwm"
while true; do
    # Log stderror to a file 
    $dwmdir 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
