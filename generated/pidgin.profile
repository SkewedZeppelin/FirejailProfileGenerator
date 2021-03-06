#
#Profile for pidgin
#

#No Blacklist Paths
noblacklist ${HOME}/.purple

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
private-bin pidgin
private-dev
private-tmp
protocol unix,inet,inet6
seccomp
shell none
tracelog
