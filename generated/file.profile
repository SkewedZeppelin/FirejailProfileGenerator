#
#Profile for file
#

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
hostname file
net none
netfilter
no3d
nonewprivs
nosound
private-bin file
private-dev
private-etc magic.mgc,magic,localtime
private-tmp
protocol unix,inet,inet6
quiet
seccomp
shell none
tracelog
