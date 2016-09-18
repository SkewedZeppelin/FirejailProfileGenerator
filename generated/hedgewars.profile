#
#Profile for hedgewars
#

#No Blacklist Paths
noblacklist ${HOME}/.hedgewars

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.hedgewars
whitelist ${HOME}/.hedgewars
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
seccomp
tracelog
private-dev
private-tmp
