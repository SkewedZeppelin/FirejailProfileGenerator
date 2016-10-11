#
#Profile for flowblade
#

#No Blacklist Paths
noblacklist ${HOME}/.config/flowblade
noblacklist ${HOME}/.flowblade

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
ipc-namespace
net none
noexec /home
noexec /tmp
nogroups
noroot
private-bin python,flowblade
private-dev
private-etc pulse,fonts,alternatives,X11
seccomp
shell none
