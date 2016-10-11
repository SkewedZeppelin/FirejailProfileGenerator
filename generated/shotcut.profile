#
#Profile for shotcut
#

#No Blacklist Paths
noblacklist ${HOME}/.config/Meltytech

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
net none
noexec ${HOME}
noexec /tmp
nogroups
noroot
private-bin shotcut,melt,qmelt,nice
private-dev
private-etc X11,alternatives,pulse,fonts
seccomp
shell none
