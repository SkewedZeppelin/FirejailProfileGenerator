#
#Profile for cherrytree
#

#No Blacklist Explicit Paths
noblacklist /usr/bin/python2*
noblacklist /usr/bin/python3*

#No Blacklist Paths
noblacklist ${HOME}/.config/cherrytree

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
nosound
protocol unix,inet,inet6,netlink
seccomp
tracelog
