#!/usr/bin/bash

r=$(echo -e "Laptop\nHDMI\nOther" | dmenu -i -p "Select output > " -fn "Ubuntu-10" -sb "#83a598" -sf "#282828" -nb "#282828") #-fn "Cantarell-14" -nf '#ffb52a' -sb '#ffb52a' -sf '#222')

case "$r" in
    Laptop) /home/pzeadrian/.config/bspwm/screenlayouts/portatil.sh ;;
    HDMI) /home/pzeadrian/.config/bspwm/screenlayouts/hdmi.sh ;;
    Other) arandr ;;
    *) echo "Not found $r (Laptop|HDMI|Other)" ;;
esac

