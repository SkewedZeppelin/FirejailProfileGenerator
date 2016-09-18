#
#Profile for gthumb
#

#No Blacklist Paths
noblacklist ${HOME}/.config/gthumb

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
private-bin gthumb
private-dev
