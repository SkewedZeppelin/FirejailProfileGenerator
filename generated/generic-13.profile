#
#Profile for generic-13
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
nonewprivs
noroot
nosound
private-dev
protocol unix,inet,inet6
quiet
seccomp
shell none
tracelog
