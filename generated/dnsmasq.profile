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
no3d
nonewprivs
nosound
private
private-dev
protocol unix,inet,inet6,netlink
seccomp
