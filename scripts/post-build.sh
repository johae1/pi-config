#!/bin/sh

echo "---------------------------------------------------------"

# MARK A: Orginalskript starten
echo "${TARGET_DIR}/../../board/raspberrypi4/post-build.sh $*"
${TARGET_DIR}/../../board/raspberrypi4/post-build.sh $*

# MARK B: Netzwerk
echo "Placing interfaces file"
install -m 755 ../target/interfaces $1/etc/network/

# MARK C: Zeit setzen
install -m 755 ../target/ntp.conf $1/etc/
install -m 755 ../target/S51ntpd $1/etc/init.d/

# MARK D: SD-Karte einhaengen

# MARK E: Webserver
echo "Installing webserver files"
mkdir -p $1/var/www
install -m 755    ../target/S51httpd   $1/etc/init.d/
install           ../target/httpd.conf $1/etc/
install -D        ../target/index.html $1/var/www/
install -D -m 755 ../target/ps.cgi     $1/var/www/

# MARK F: Firewall

# MARK G: Usermanagement

echo "---------------------------------------------------------"
