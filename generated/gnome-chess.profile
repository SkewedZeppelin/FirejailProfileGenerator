#
#Profile for gnome-chess
#

#No Blacklist Paths
noblacklist ${HOME}/.local/share/gnome-chess

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
nogroups
nonewprivs
noroot
nosound
private-bin fairymax,gnome-chess,hoichess
private-dev
private-etc fonts,gnome-chess
private-tmp
protocol unix
seccomp
shell none
tracelog
