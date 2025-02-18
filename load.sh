#!/bin/bash
sudo avrdude -p t2313 -c dragon_isp -P usb -u -U efuse:w:0xff:m
sleep 2
sudo avrdude -p t2313 -c dragon_isp -P usb -u -U hfuse:w:0xdf:m
sleep 2
sudo avrdude -p t2313 -c dragon_isp -P usb -u -U lfuse:w:0xfd:m
sleep 2
sudo avrdude -p t2313 -c dragon_isp -e -P usb -U flash:w:MintyTimeV4.hex

