#
#Profile for ardour5
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/ardour4
noblacklist ${HOME}/.config/ardour5
noblacklist ${HOME}/Documents

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/ardour4
whitelist ${HOME}/.config/ardour4
mkdir ${HOME}/.config/ardour5
whitelist ${HOME}/.config/ardour5
mkdir ${HOME}/Documents
whitelist ${HOME}/Documents
include /etc/firejail/whitelist-common.inc

#Options
blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin
caps.drop all
ipc-namespace
net none
noexec /home
noexec /tmp
nogroups
noroot
private-bin sh,ardour5,ardour5-copy-mixer,ardour5-export,ardour5-fix_bbtppq,grep,sed,ldd,nm
private-dev
private-etc pulse,X11,alternatives,ardour4,ardour5,fonts
private-tmp
seccomp
shell none
