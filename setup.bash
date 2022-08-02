#!/bin/bash -x

KEYFILE='/root/usbkeys.json'
echo '{}' > $KEYFILE
chmod 600 $KEYFILE
cp ./sbin/usbkey /usr/local/sbin/
cp ./udev/10-usbkey.rules /etc/udev/rules.d/
udevadm control -R
