#
#Profile for stellarium
#

#No Blacklist Paths
noblacklist ${HOME}/.config/stellarium
noblacklist ${HOME}/.stellarium

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/stellarium
whitelist ${HOME}/.config/stellarium
mkdir ${HOME}/.stellarium
whitelist ${HOME}/.stellarium
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
nosound
private-bin stellarium
private-dev
private-tmp
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog
