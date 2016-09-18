#
#Profile for atom
#

#No Blacklist Paths
noblacklist ${HOME}/.atom
noblacklist ${HOME}/.config/Atom

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Options
caps.drop all
netfilter
nonewprivs
nogroups
noroot
nosound
protocol unix,inet,inet6,netlink
seccomp
shell none
private-dev
private-tmp
