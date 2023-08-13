#!/usr/bin/env sh
username=$USERNAME
if [ "$username" = "" ]
then
  username="user"
fi
homedir=/home/$username
password=$PASSWORD
if [ "$password" = "" ]
then
  password="pass"
fi

useradd --password $(openssl passwd $password) --create-home --home-dir $homedir $username
usermod -aG wheel $username

echo "/usr/bin/startplasma-x11" > $homedir/.xsession
ln -s /usr/bin/startplasma-x11 $homedir/.xinitrc

if [ "$PRE_START_SCRIPT" != "" ]
then
  sh "$PRE_START_SCRIPT"
fi

/usr/sbin/xrdp-sesman
/usr/sbin/xrdp --nodaemon
