#
#Profile for rhythmbox
#

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
nogroups
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
shell none
tracelog
private-bin rhythmbox
private-dev
private-tmp
