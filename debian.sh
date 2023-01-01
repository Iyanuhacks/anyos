pkg install debootstrap proot wget

debootstrap --arch=ARCH stable debian-stable http://ftp.debian.org/debian/

#!/data/data/com.termux/files/usr/bin/sh
proot \
  -0 \
  --link2symlink \
  -r ~/debian-stable \
  -b /dev/ \
  -b /sys/ \
  -b /proc/ \
  -b /data/data/com.termux/files/home \
  /usr/bin/env \
    -i \
    HOME=/root \
    TERM="xterm-256color" \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin \
    /bin/bash --login
