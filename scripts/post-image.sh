#!/bin/bash
# Orginalscript starten
#echo "${TARGET_DIR}/../../board/raspberrypi4/post-image.sh $*"
#echo
#${TARGET_DIR}/../../board/raspberrypi4/post-image.sh $*
cp output/images/rootfs.cpio /srv/tftp/
echo "Done"
