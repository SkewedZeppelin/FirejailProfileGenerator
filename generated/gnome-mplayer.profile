#
#Profile for gnome-mplayer
#

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
private-bin gnome-mplayer
private-dev
private-tmp
protocol unix,inet,inet6
seccomp
shell none
