#
#Profile for virtualbox
#

#No Blacklist Explicit Paths
noblacklist /dev/vboxdrv
noblacklist /dev/vboxdrvu
noblacklist /dev/vboxnetctl
noblacklist /usr/bin/virtualbox

#No Blacklist Paths
noblacklist ${HOME}/.VirtualBox
noblacklist ${HOME}/.config/VirtualBox
noblacklist ${HOME}/VirtualBox VMs

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
