#
#Profile for ranger
#

#No Blacklist Explicit Paths
noblacklist /usr/bin/perl
noblacklist /usr/lib/perl*
noblacklist /usr/share/perl*

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
net none
netfilter
nogroups
nonewprivs
noroot
nosound
private-dev
private-tmp
protocol unix
seccomp
