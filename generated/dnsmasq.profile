#
#Profile for dnsmasq
#

#No Blacklist Explicit Paths
noblacklist /sbin
noblacklist /usr/sbin

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps
netfilter
nonewprivs
private
private-dev
nosound
protocol unix,inet,inet6,netlink
seccomp
