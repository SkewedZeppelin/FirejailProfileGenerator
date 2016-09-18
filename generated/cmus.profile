#
#Profile for cmus
#

#No Blacklist Paths
noblacklist ${HOME}/.config/cmus

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
private-bin cmus
private-etc group
shell none
