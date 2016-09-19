#
#Profile for uudeview
#

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
hostname uudeview
net none
netfilter
nonewprivs
nosound
private-bin uudeview
private-dev
private-etc nonexisting_fakefile_for_empty_etc
private-tmp
protocol unix,inet,inet6
quiet
seccomp
shell none
tracelog
