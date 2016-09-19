#
#Profile for deluge
#

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
nosound
nosound
private-bin deluge,sh,python,uname
private-dev
protocol unix,inet,inet6
seccomp
shell none
