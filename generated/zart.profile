#
#Profile for zart
#

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
noroot
private-bin zart,ffmpeg,melt,ffprobe,ffplay
private-dev
private-etc fonts,X11
seccomp
shell none
