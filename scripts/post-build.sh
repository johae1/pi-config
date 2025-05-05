#!/bin/sh

# MARK A: Orginalskript starten
echo "${TARGET_DIR}/../../board/raspberrypi4/post-build.sh $*"
${TARGET_DIR}/../../board/raspberrypi4/post-build.sh $*

# MARK B: Netzwerk
install -m 755 ../target/interfaces $1/etc/network/

# MARK C: Zeit setzen

# MARK D: SD-Karte einhaengen

# MARK E: Webserver
echo "Webserver..."
mkdir -p $1/var/www/cgi-bin
install -m 755    ../target/S51httpd   $1/etc/init.d/
install           ../target/httpd.conf $1/etc/
install -D        ../target/index.html $1/var/www/
install -D -m 755 ../target/ps.cgi     $1/var/www/cgi-bin/

# MARK F: Firewall

# MARK G: Usermanagement

