#
#Profile for git
#

#No Blacklist Explicit Paths
noblacklist ${HOME}/.gitconfig
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.ssh

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
protocol unix,inet,inet6
quiet
seccomp
shell none
