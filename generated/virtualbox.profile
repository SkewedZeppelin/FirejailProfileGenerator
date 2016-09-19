#
#Profile for virtualbox
#

#No Blacklist Paths
noblacklist ${HOME}/.config/VirtualBox
noblacklist /dev/vboxdrv
noblacklist /dev/vboxdrvu
noblacklist /dev/vboxnetctl

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
