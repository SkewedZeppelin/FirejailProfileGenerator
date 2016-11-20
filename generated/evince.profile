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
netfilter
nogroups
nonewprivs
noroot
nosound
private-bin evince,evince-previewer,evince-thumbnailer
private-dev
private-etc fonts
protocol unix
seccomp
shell none
tracelog
