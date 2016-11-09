#
#Profile for wire
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/Wire
noblacklist ${HOME}/.config/wire

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
private-dev
private-tmp
protocol unix,inet,inet6,netlink
seccomp
shell none
