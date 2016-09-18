#
#Profile for uudeview
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
private-bin uudeview
private-dev
private-tmp
private-etc nonexisting_fakefile_for_empty_etc
hostname uudeview
nosound
caps.drop all
netfilter
nonewprivs
protocol unix,inet,inet6
seccomp
