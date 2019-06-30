#!/bin/sh -xe

git clone git://git.ideasonboard.org/uvc-gadget.git
cd uvc-gadget
mkdir build
cd build
cmake ..
make
../scripts/uvc-gadget.sh start

