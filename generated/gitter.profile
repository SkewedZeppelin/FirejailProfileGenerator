#
#Profile for gitter
#

#No Blacklist Paths
noblacklist ${HOME}/.config/Gitter

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
protocol unix,inet,inet6,netlink
seccomp
shell none
private-bin gitter
private-dev
private-tmp
