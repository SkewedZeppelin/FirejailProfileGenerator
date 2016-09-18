#
#Profile for qtox
#

#No Blacklist Paths
noblacklist ${HOME}/.config/tox
noblacklist ${DOWNLOADS}

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${HOME}/.config/tox
whitelist ${DOWNLOADS}
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
nogroups
noroot
protocol unix,inet,inet6
seccomp
shell none
tracelog
private-bin qtox
private-tmp
