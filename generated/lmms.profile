#
#Profile for lmms
#

noblacklist ${HOME}/.lmmsrc.xml

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
private-dev
private-etc fonts,pulse
seccomp
shell none
