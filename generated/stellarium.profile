#
#Profile for stellarium
#

#No Blacklist Paths
noblacklist ${HOME}/.stellarium
noblacklist ${HOME}/.config/stellarium

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${HOME}/.stellarium
whitelist ${HOME}/.config/stellarium
include /etc/firejail/whitelist-common.inc

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
tracelog
private-bin stellarium
private-dev
private-tmp
