#!/usr/bin/env bash

# fail on errors
set -eu

# Add first-login task
cat >> /home/pi/.bashrc <<EOM
/home/pi/grampsweb/firstlogin.sh
EOM

# disable user interactions
export DEBIAN_FRONTEND="noninteractive"
export TMPDIR="/tmp"

# add users to docker group
usermod -aG docker $USER
usermod -aG docker pi
newgrp docker

mkdir -p /home/pi/grampsweb/media

# change permissions
chown -Rf pi:pi /home/pi/grampsweb

# clear package cache
apt-get autoclean
apt-get autoremove
