#
#Profile for blender
#

#No Blacklist Paths
noblacklist ${HOME}/.config/blender

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
private-bin blender
private-dev
private-etc pulse
seccomp
shell none
