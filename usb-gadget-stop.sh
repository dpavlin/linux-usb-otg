#!/bin/bash
cd /sys/kernel/config/usb_gadget/g1
echo '' > UDC
find configs -type l -exec rm -v {} \;
#rmdir configs/c.1/strings/0x409
find configs -name 'strings' -exec rmdir -v {}/0x409 \;
#rmdir configs/c.1
ls -d configs/* | xargs rmdir -v
#rmdir strings/0x409
ls -d strings/* | xargs rmdir -v
#rmdir functions/hid.usb0
ls -d functions/* | xargs rmdir -v

cd ..
rmdir -v g1
