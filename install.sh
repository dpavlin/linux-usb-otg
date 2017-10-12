#!/bin/sh

cp usb-otg.service /etc/systemd/system/
systemctl enable usb-otg
systemctl enable serial-getty@ttyGS0
systemctl status usb-otg
systemctl status serial-getty@ttyGS0

# allow root login from gadget serial port
grep ttyGS0 /etc/securetty || echo -e "# usb gadget serial\n/dev/ttyGS0\n" >> /etc/securetty

make hid_gadget_test
