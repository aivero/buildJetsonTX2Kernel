#!/bin/bash
# apply realsense patches for video
# TODO: inlcude hid gyro/accel patches
sudo cp ./realsense_patches/rs*patch /usr/src/kernel/
cd /usr/src/kernel/
sudo patch -p2 < rs_include_viddev.patch
sudo patch -p2 < rs_media_usb_uvc.patch
sudo patch -p2 < rs_media_v4l2.patch

