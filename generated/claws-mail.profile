#
#Profile for claws-mail
#

#No Blacklist Explicit Paths
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.signature

#No Blacklist Paths
noblacklist ${HOME}/.claws-mail

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
