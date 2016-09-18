#
#Profile for generic-13
#

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
quiet
tracelog
net none
shell none
private-dev
private-tmp
nosound
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
