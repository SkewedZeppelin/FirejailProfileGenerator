#
#Profile for calligra
#

#No Blacklist Explicit Paths
noblacklist /tmp/dbus_session_socket

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
private-bin calligra,calligraauthor,calligraconverter,calligraflow,calligraplan,calligraplanwork,calligrasheets,calligrastage,calligrawords,dbus-launch
private-dev
private-etc fonts,passwd,alternatives,X11
seccomp
shell none
