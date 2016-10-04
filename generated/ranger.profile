#
#Profile for ranger
#

#No Blacklist Explicit Paths
noblacklist noblacklist /usr/bin/perl
noblacklist noblacklist /usr/lib/perl*
noblacklist noblacklist /usr/share/perl*

#No Blacklist Paths
noblacklist 

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
