#
#Profile for darktable
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/darktable
noblacklist ${HOME}/.config/darktable

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
ipc-namespace
net none
noexec ${HOME}
noexec /tmp
nogroups
noroot
nosound
private-bin darktable
private-dev
private-etc fonts,X11,alternatives
seccomp
shell none
