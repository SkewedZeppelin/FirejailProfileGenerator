#
#Profile for eom
#

#No Blacklist Paths
noblacklist ${HOME}/.config/mate/eom

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
private-bin eom
private-dev
private-tmp
protocol unix
seccomp
shell none
tracelog
