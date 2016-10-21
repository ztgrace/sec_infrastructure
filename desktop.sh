#!/bin/bash
# Inspired by: http://jerrygamblin.com/2016/10/19/ubuntu-remote-desktop-on-digital-ocean/
apt-get update && sudo apt-get dist-upgrade -y
apt-get install --no-install-recommends ubuntu-mate-core ubuntu-mate-desktop -y
apt-get install mate-core mate-desktop-environment mate-notification-daemon xrdp -y
adduser burp
usermod -aG sudo burp
su -c 'echo mate-session> ~/.xsession' burp
su -c 'sudo cp /home/burp/.xsession /etc/skel' burp
service xrdp restart
