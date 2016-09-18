#
#Profile for gpredict
#

#No Blacklist Paths
noblacklist ${HOME}/.config/Gpredict

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${HOME}/.config/Gpredict
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
nogroups
noroot
nosound
protocol unix,inet,inet6
seccomp
shell none
tracelog
private-bin gpredict
private-dev
private-tmp
