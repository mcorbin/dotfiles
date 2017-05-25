#!/bin/sh

apt-get install \
        xserver-xorg \
        xinit \
        maven

# security++
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -P /usr/local/bin/
chmod +x /usr/local/bin/lein

