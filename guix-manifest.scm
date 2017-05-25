; -*- mode: scheme; -*-

(define font '("font-adobe-source-han-sans"
               "gs-fonts"
               "fontconfig"
               "font-inconsolata"
               "font-dejavu"
               "font-gnu-freefont-ttf"
               "font-fira-mono"))

(define editor '("emacs"))

(define python '("python@3.5.3"
                 "python@2.7.13"
                 "python-virtualenv"
                 "python2-virtualenv"
                 "python2-pip"))

(define lang '("guile@2.2"
               "guile@2.2:debug"
               "nss-certs"
               "icedtea@3.4.0"))

(define shell '("rxvt-unicode"))

(define system '("git"
                 "glibc-locales"
                 "strace"
                 "nss-certs"))

(define wm '("i3-wm"
             "i3status"
             "dmenu"))

(define media '("pavucontrol"
                "transmission"
                "vlc"
                "gimp"))

(packages->manifest
 (map (compose list specification->package+output)
      (append font
              editor
              python
              lang
              shell
              system
              wm
              media)))
