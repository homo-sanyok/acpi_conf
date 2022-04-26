#!/bin/sh

export PULSE_SERVER="unix:/run/user/1000/pulse/native"
sudo -u hex pactl -s "$PULSE_SERVER" set-sink-port 'alsa_output.pci-0000_03_00.6.HiFi__hw_Generic_1__sink' '[Out] Headphones'
