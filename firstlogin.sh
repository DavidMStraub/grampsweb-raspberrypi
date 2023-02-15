#!/bin/sh

# run first login wizard
/home/pi/grampsweb/firstlogin.py

# restore default bashrc file
cp -f /etc/skel/.bashrc /home/pi/.bashrc

# start services using docker-compose
(cd /home/pi/grampsweb && docker-compose pull && docker-compose stop && docker-compose up --remove-orphans -d)
