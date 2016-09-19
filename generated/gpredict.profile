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
mkdir ${HOME}/.config/Gpredict
whitelist ${HOME}/.config/Gpredict
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
nosound
private-bin gpredict
private-dev
private-tmp
protocol unix,inet,inet6
seccomp
shell none
tracelog
