#
#Profile for bitlbee
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
netfilter
nonewprivs
private
private-dev
protocol unix,inet,inet6
seccomp
nosound
read-write /var/lib/bitlbee