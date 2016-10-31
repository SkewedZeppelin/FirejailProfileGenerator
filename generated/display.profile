#
#Profile for display
#

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
net none
netfilter
nogroups
nonewprivs
noroot
nosound
private-bin display 
private-dev
private-etc none
private-tmp
protocol unix
seccomp
shell none
x11 xorg
