#
#Profile for feh
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
private-bin feh
private-dev
private-etc feh
private-tmp
protocol unix
seccomp
shell none
