#
#Profile for keepass
#

#No Blacklist Paths
noblacklist ${HOME}/.config/keepass
noblacklist ${HOME}/.keepass

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
nosound
private-dev
private-tmp
protocol unix,inet,inet6
seccomp
shell none
