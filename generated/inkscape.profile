#
#Profile for inkscape
#

#No Blacklist Paths
noblacklist ${HOME}/.inkscape

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
