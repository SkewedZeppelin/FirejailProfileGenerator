#
#Profile for xviewer
#

#No Blacklist Paths
noblacklist ${HOME}/.config/xviewer

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
protocol unix
seccomp
shell none
tracelog
private-dev
private-bin xviewer
private-tmp
