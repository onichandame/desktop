#!/usr/bin/env sh
if [ "$PRE_START_SCRIPT" != "" ]
then
  sh "$PRE_START_SCRIPT"
fi

password=$ROOT_PASSWORD
if [ "$password" = "" ]
then
  password="root"
fi
echo "root:$password" | chpasswd
echo "/usr/bin/startplasma-x11" > ~/.xsession
ln -s /usr/bin/startplasma-x11 ~/.xinitrc

/usr/sbin/xrdp-sesman
/usr/sbin/xrdp --nodaemon
