#
#Profile for evince
#

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
nonewprivs
nogroups
noroot
nosound
protocol unix
seccomp
shell none
private-bin evince,evince-previewer,evince-thumbnailer
private-dev
