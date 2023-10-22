#!/bin/bash
# relaunch DWM if the binary changes, otherwise bail
dwmdir=$HOME"/sl/dwm/dwm"
csum=""
new_csum=$(sha1sum $dwmdir)
while true
do
    if [ "$csum" != "$new_csum" ]
    then
        csum=$new_csum
        $dwmdir
    else
        exit 0
    fi
    new_csum=$(sha1sum $dwmdir)
    sleep 0.5
done
