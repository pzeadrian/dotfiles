#!/usr/bin/bash

r=$(echo -e "Internal\nExternal\nBluetooth" | dmenu -i -p "Select sound output > " -fn "Ubuntu-10" -sb "#83a598" -sf "#282828" -nb "#282828") #-fn "Cantarell-14" -nf '#ffb52a' -sb '#ffb52a' -sf '#222')

case "$r" in
    Internal)  pactl set-default-sink alsa_output.pci-0000_03_00.6.analog-stereo ;;
    External) pactl set-default-sink alsa_output.pci-0000_03_00.1.hdmi-stereo ;;
    Bluetooth) pactl set-default-sink bluez_sink.00_00_00_00_8F_61.a2dp_sink ;;
    *) echo "Not found $r (Internal|External)" ;;
esac
