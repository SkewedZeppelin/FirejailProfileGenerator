#
#Profile for file
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
private-bin file
private-dev
private-etc magic.mgc,magic,localtime
hostname file
nosound
caps.drop all
netfilter
nonewprivs
protocol unix,inet,inet6
seccomp
