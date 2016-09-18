#
#Profile for warzone2100
#

#No Blacklist Paths
noblacklist ${HOME}/.warzone2100-3.1

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.warzone2100-3.1
whitelist ${HOME}/.warzone2100-3.1
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog
private-bin warzone2100
private-dev
private-tmp
