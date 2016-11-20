#
#Profile for kmail
#

#No Blacklist Paths
noblacklist ${HOME}/.gnupg

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
private-dev
protocol unix,inet,inet6,netlink
seccomp
tracelog
