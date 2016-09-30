#
#Profile for gimp
#

#No Blacklist Paths
noblacklist ${HOME}/.gimp*

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Options
caps.drop all
netfilter
noexec ${HOME}
noexec /tmp
nogroups
nonewprivs
noroot
nosound
private-dev
private-tmp
protocol unix
seccomp
