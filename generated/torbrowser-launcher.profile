#
#Profile for torbrowser-launcher
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/torbrowser
noblacklist ${HOME}/.config/torbrowser
noblacklist ${HOME}/.local/share/torbrowser

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/torbrowser
whitelist ${HOME}/.cache/torbrowser
mkdir ${HOME}/.config/torbrowser
whitelist ${HOME}/.config/torbrowser
mkdir ${HOME}/.local/share/torbrowser
whitelist ${HOME}/.local/share/torbrowser
include /etc/firejail/whitelist-common.inc

#Options
blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin
caps.drop all
noexec /tmp
noroot
private-bin bash,grep,sed,tail,torbrowser-launcher,python,env,gpg,id,readlink,dirname,test,mkdir,ln,sed,cp,rm,zenity,kdialog,xmessage,gxmessage,getconf,file,expr
private-etc X11,alternatives,pulse,resolv.conf,fonts,ssl
private-tmp
seccomp
shell none
whitelist /dev/dri
whitelist /dev/full
whitelist /dev/null
whitelist /dev/ptmx
whitelist /dev/pts
whitelist /dev/random
whitelist /dev/shm
whitelist /dev/snd
whitelist /dev/tty
whitelist /dev/urandom
whitelist /dev/video0
whitelist /dev/zero
