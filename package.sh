#!/bin/sh

# shell, notes...

# too many issues with icedtea...

apt-get install \
        xserver-xorg \
        xinit \
        nscd \
        libnss3 \
        libnss3-dev \
        openjdk-8-jdk \
        dnsutils \
        maven

# nss.cfg config file if issues with icedtea
# security/nss.cfg
# name = NSS
# nssDbMode = noDb
# attributes = compatibility
# handleStartupErrors = ignoreMultipleInitialisation

# security++
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -P /usr/local/bin/
chmod +x /usr/local/bin/lein

